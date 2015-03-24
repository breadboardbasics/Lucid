@echo off
TITLE Luc.id Programmer

set /p hour=Enter hour to wake up on (Military Time):
set /p min=Enter minute to wake up on:
set /p current=Enter tACS current (0-2000uA):
set /p pdurr=Enter duration of each pulse in minutes:
set /p npdurr=Enter duration of non-pulse time in minutes:

set hour=%hour%;//varHour
set min=%min%;//varMin
set current=%current%;//varCurrent
set pdurr=%pdurr%;//varPdurr
set npdurr=%npdurr%;//varNpdurr

cd C:\Users\Tyler\Documents\LucidC

fart.exe -- Lucid.c //varHour %hour%
fart.exe -- Lucid.c //varMin %min%
fart.exe -- Lucid.c //varCurrent %current%
fart.exe -- Lucid.c //varPdurr %pdurr%
fart.exe -- Lucid.c //varNpdurr %npdurr%

cls
echo Compiling...

avr-gcc -g -Os -mmcu=atmega328p -c Lucid.c
avr-gcc -g -mmcu=atmega328p -o Lucid.elf Lucid.o
avr-objcopy -j .text -j .data -O ihex Lucid.elf Lucid.hex

pause

fart.exe -- Lucid.c %hour%  //varHour
fart.exe -- Lucid.c %min%  //varMin
fart.exe -- Lucid.c %current%  //varCurrent
fart.exe -- Lucid.c %pdurr%  //varPdurr
fart.exe -- Lucid.c %npdurr%  //varNpdurr

cls

avrdude -p atmega328p -c usbtiny -P -e -U flash:w:Lucid.hex

echo Done!
pause