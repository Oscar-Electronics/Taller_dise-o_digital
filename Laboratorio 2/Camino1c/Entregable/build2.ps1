# build.ps1 — genera firmware8.hex
$start_file = "start.s"
$c_file     = "main.c"
$output_hex = "firmware8.hex"
$basename   = "main"

Write-Host "--- Compilando $start_file ---" -ForegroundColor Cyan
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -c $start_file -o start.o
if ($LASTEXITCODE -ne 0) { throw "Error compilando start.s" }

Write-Host "--- Compilando $c_file ---" -ForegroundColor Cyan
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -ffreestanding -nostdlib -O0 -c $c_file -o main.o
if ($LASTEXITCODE -ne 0) { throw "Error compilando main.c" }

Write-Host "--- Enlazando ---" -ForegroundColor Cyan
riscv-none-elf-ld -m elf32lriscv --section-start .text=0x00000000 start.o main.o -o "$basename.elf"
if ($LASTEXITCODE -ne 0) { throw "Error enlazando" }

Write-Host "--- Secciones ---" -ForegroundColor Yellow
riscv-none-elf-objdump -h "$basename.elf"

Write-Host "--- Generando $output_hex ---" -ForegroundColor Yellow
riscv-none-elf-objcopy -O binary "$basename.elf" "$basename.bin"

$bin = [System.IO.File]::ReadAllBytes("$PWD\$basename.bin")
while ($bin.Length % 4 -ne 0) { $bin += [byte]0x00 }

$hex_lines = for ($i = 0; $i -lt $bin.Length; $i += 4) {
    "{0:x2}{1:x2}{2:x2}{3:x2}" -f $bin[$i+3], $bin[$i+2], $bin[$i+1], $bin[$i]
}

$hex_lines | Out-File -Encoding ascii $output_hex
Write-Host "Exito! $($hex_lines.Count) palabras en $output_hex" -ForegroundColor Green
Write-Host "Primeras 4:" -ForegroundColor Yellow
$hex_lines | Select-Object -First 4 | ForEach-Object { Write-Host "  $_" }

Remove-Item start.o, main.o -ErrorAction SilentlyContinue