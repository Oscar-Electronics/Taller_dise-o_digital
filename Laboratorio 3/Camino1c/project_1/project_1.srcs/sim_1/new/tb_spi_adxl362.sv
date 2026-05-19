`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tb_spi_adxl362;

    logic clk;
    logic resetn;

    logic        mem_valid;
    logic [31:0] mem_addr;
    logic [31:0] mem_wdata;
    logic [3:0]  mem_wstrb;
    logic [31:0] mem_rdata;
    logic        mem_ready;

    logic spi_sclk;
    logic spi_mosi;
    logic spi_miso;
    logic spi_cs_n;

    localparam logic [31:0] ADDR_CTRL = 32'h0000_2020;
    localparam logic [31:0] ADDR_XY   = 32'h0000_2028;
    localparam logic [31:0] ADDR_Z    = 32'h0000_202C;

    always #5 clk = ~clk;

    spi_adxl362 #(
        .CLK_FREQ(100_000_000),
        .SPI_FREQ(1_000_000)
    ) dut (
        .clk       (clk),
        .resetn    (resetn),

        .mem_valid (mem_valid),
        .mem_addr  (mem_addr),
        .mem_wdata (mem_wdata),
        .mem_wstrb (mem_wstrb),
        .mem_rdata (mem_rdata),
        .mem_ready (mem_ready),

        .spi_sclk  (spi_sclk),
        .spi_mosi  (spi_mosi),
        .spi_miso  (spi_miso),
        .spi_cs_n  (spi_cs_n)
    );

    // ------------------------------------------------------------
    // Modelo simple de esclavo SPI tipo ADXL362
    // ------------------------------------------------------------

    logic [7:0] miso_bytes [0:7];
    logic [7:0] tx_byte;
    int byte_index;
    int bit_index;

    initial begin
        miso_bytes[0] = 8'h00;
        miso_bytes[1] = 8'h00;

      miso_bytes[0] = 8'h00;
      miso_bytes[1] = 8'h00;

        miso_bytes[2] = 8'h23; // X LSB
        miso_bytes[3] = 8'h01; // X MSB
        
        
        miso_bytes[4] = 8'hBC;
        miso_bytes[5] = 8'h05;
        
        miso_bytes[6] = 8'h55; // Z LSB
        miso_bytes[7] = 8'h00; // Z MSB
        
        spi_miso   = 1'b0;
        byte_index = 0;
        bit_index  = 7;
        tx_byte    = 8'h00;
    end

  always @(negedge spi_cs_n) begin
    byte_index <= 0;
    bit_index  <= 7;
    spi_miso   <= miso_bytes[0][7];
end

always @(negedge spi_sclk or posedge spi_cs_n) begin
    if (spi_cs_n) begin
        byte_index <= 0;
        bit_index  <= 7;
        spi_miso   <= 1'b0;
    end else begin
        if (bit_index == 0) begin
            if (byte_index < 7) begin
                byte_index <= byte_index + 1;
                bit_index  <= 7;
                spi_miso   <= miso_bytes[byte_index + 1][7];
            end else begin
                spi_miso <= 1'b0;
            end
        end else begin
            bit_index <= bit_index - 1;
            spi_miso  <= miso_bytes[byte_index][bit_index - 1];
        end
    end
end
    // ------------------------------------------------------------
    // Tareas MMIO
    // ------------------------------------------------------------

    task automatic mmio_write(
        input logic [31:0] addr,
        input logic [31:0] data
    );
        begin
            @(posedge clk);
            mem_valid <= 1'b1;
            mem_addr  <= addr;
            mem_wdata <= data;
            mem_wstrb <= 4'b1111;

            wait (mem_ready == 1'b1);

            @(posedge clk);
            mem_valid <= 1'b0;
            mem_addr  <= 32'h0000_0000;
            mem_wdata <= 32'h0000_0000;
            mem_wstrb <= 4'b0000;
        end
    endtask

    task automatic mmio_read(
        input  logic [31:0] addr,
        output logic [31:0] data
    );
        begin
            @(posedge clk);
            mem_valid <= 1'b1;
            mem_addr  <= addr;
            mem_wdata <= 32'h0000_0000;
            mem_wstrb <= 4'b0000;

            wait (mem_ready == 1'b1);
            data = mem_rdata;

            @(posedge clk);
            mem_valid <= 1'b0;
            mem_addr  <= 32'h0000_0000;
        end
    endtask

    // ------------------------------------------------------------
    // Prueba principal
    // ------------------------------------------------------------

    logic [31:0] ctrl;
    logic [31:0] data_xy;
    logic [31:0] data_z;

    initial begin
        $dumpfile("tb_spi_adxl362.vcd");
        $dumpvars(0, tb_spi_adxl362);

        clk       = 1'b0;
        resetn    = 1'b0;
        mem_valid = 1'b0;
        mem_addr  = 32'h0000_0000;
        mem_wdata = 32'h0000_0000;
        mem_wstrb = 4'b0000;

        #200;
        resetn = 1'b1;

        // Espera la inicializacion interna del ADXL362
        #2_000_000;

        $display("Iniciando lectura SPI del acelerometro...");

        mmio_write(ADDR_CTRL, 32'h0000_0001);

        ctrl = 32'h0000_0001;

        while (ctrl[0] == 1'b1) begin
            mmio_read(ADDR_CTRL, ctrl);
        end

        mmio_read(ADDR_XY, data_xy);
        mmio_read(ADDR_Z,  data_z);

        $display("CTRL    = %h", ctrl);
        $display("DATA_XY = %h", data_xy);
        $display("DATA_Z  = %h", data_z);

        $display("X = %h", data_xy[15:0]);
        $display("Y = %h", data_xy[31:16]);
        $display("Z = %h", data_z[15:0]);

       assert (data_xy[15:0] == 16'h0123)
            else $error("Error en X. Esperado 0123, recibido %h", data_xy[15:0]);
            
            assert (data_xy[31:16] == 16'h05BC)
              else $error("Error en Y. Esperado 05BC, recibido %h", data_xy[31:16]);


        assert (data_z[15:0] == 16'h0055)
            else $error("Error en Z. Esperado 0055, recibido %h", data_z[15:0]);

        if (data_xy[15:0] == 16'h0123 &&
            data_xy[31:16] == 16'h0ABC &&
            data_z[15:0] == 16'h0055) begin
            $display("TEST PASSED: el controlador SPI ADXL362 funciona correctamente.");
        end else begin
            $display("TEST FAILED: los datos recibidos no coinciden.");
        end

        #5_000_000;
        $finish;
    end

endmodule
