`timescale 1ns / 1ps
// Configurable UART module
module uart #(
  parameter DataLength      = 8,
  parameter BaudRate        = 9600,
  parameter FifoDepth       = 8,
  parameter SystemClockFreq = 100_000_000,
  parameter Parity          = 1'b0, // 1 if enabled, 0 if not
  parameter ParityEven      = 1'b0, // 1 if even, 0 if odd
  parameter FlowControl     = 1'b0  // 1 if enabled, 0 if disabled (RTS and CTS)
)(
  /* Main Signals */
  input  logic        i_rst_n,    /* Async active low reset */
  input  logic        i_clk,
  /* Module Signals */
  input  logic [7:0]  i_tx_data,  /* Byte to send */
  output logic [7:0]  o_rx_data,  /* Recieved byte */
  input  logic        i_tx_req,   /* Request to send (write to TX FIFO) */
  input  logic        i_rx_req,   /* Request to read (pop from RX FIFO) */
  output logic        o_rx_rdy,   /* Data available in RX FIFO (not empty) */
  output logic        o_tx_rdy,   /* TX FIFO not full - safe to write */
  output logic        o_tx_empty, /* TX FIFO empty - all bytes transmitted  ← NUEVO */
  output logic        o_rx_error, /* Error in RX, needs clearing by rst_n assertion */
  /* UART Signals */
  input  logic        i_rx,
  output logic        o_tx,
  input  logic        i_cts,
  output logic        o_rts    
);

  logic [DataLength-1:0] uart_rx_data;
  logic uart_rx_fifo_write_en, uart_tx_fifo_read_en;

  logic tx_fifo_full, tx_fifo_empty;
  logic rx_fifo_full, rx_fifo_empty;
  logic [DataLength-1:0] uart_tx_fifo_data;

  /* ----- SYNC FFs ----- */
  // Input RX Serial Stream Double FF Synchroniser, clock domain: async input -> sys_clk
  logic i_rx_sync_1, i_rx_sync_2;
  always_ff @(posedge i_clk, negedge i_rst_n) begin
    if (!i_rst_n) begin
      i_rx_sync_1 <= '1; // Hold high on reset to prevent start bit detection
      i_rx_sync_2 <= '1;
    end else begin
      i_rx_sync_1 <= i_rx;
      i_rx_sync_2 <= i_rx_sync_1;
    end
  end

  fifo #(
    .DataWidth(DataLength),
    .Depth(FifoDepth)
  ) fifo_rx (
    .i_clk,
    .i_rst_n,
    .i_wr_data(uart_rx_data),
    .i_wr_en(uart_rx_fifo_write_en),
    .i_rd_en(i_rx_req),
    .o_rd_data(o_rx_data),
    .o_full(rx_fifo_full),
    .o_empty(rx_fifo_empty)
  );

  fifo #(
    .DataWidth(DataLength),
    .Depth(FifoDepth)
  ) fifo_tx (
    .i_clk,
    .i_rst_n,
    .i_wr_data(i_tx_data),
    .i_wr_en(i_tx_req),
    .i_rd_en(uart_tx_fifo_read_en),
    .o_rd_data(uart_tx_fifo_data),
    .o_full(tx_fifo_full),
    .o_empty(tx_fifo_empty)
  );

  assign o_rx_rdy   = ~rx_fifo_empty;
  assign o_tx_rdy   = ~tx_fifo_full;   // TX FIFO tiene espacio
  assign o_tx_empty = tx_fifo_empty;   // TX FIFO vacía (todos los bytes enviados)

  assign o_rts = FlowControl ? ~rx_fifo_full : 1'bz;

  uart_tx #(
    .DataLength(DataLength),
    .FlowControl(FlowControl),
    .SystemClockFreq(SystemClockFreq),
    .BaudRate(BaudRate)
  ) uart_tx (
    .i_clk,
    .i_rst_n,
    .o_tx,
    .i_cts,
    .i_tx_fifo_data(uart_tx_fifo_data),
    .i_tx_fifo_empty(tx_fifo_empty),
    .o_tx_fifo_read_en(uart_tx_fifo_read_en)
  );

  uart_rx #(
    .DataLength(DataLength),
    .SystemClockFreq(SystemClockFreq),
    .BaudRate(BaudRate)
  ) uart_rx (
    .i_clk,
    .i_rst_n,
    .i_rx(i_rx_sync_2),
    .o_rx_data(uart_rx_data),
    .o_rx_fifo_write_en(uart_rx_fifo_write_en),
    .i_rx_fifo_full(rx_fifo_full),
    .o_rx_error
  );
 
endmodule

