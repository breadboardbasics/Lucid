@echo off
TITLE Luc.id Programmer

set /p hour=Enter hour to wake up on (Military Time):
set /p min=Enter minute to wake up on:
set /p current=Enter tACS current (0-1500uA):
set /p pdurr=Enter duration of each pulse in minutes:
set /p npdurr=Enter duration of non-pulse time in minutes:

set new_hour=%hour%;//varHour
set new_min=%min%;//varMin
set new_current=%current%;//varCurrent
set new_pdurr=%pdurr%;//varPdurr
set new_npdurr=%npdurr%;//varNpdurr

cd C:\Users\Tyler\Documents\Lucid\LucidC

fart.exe -- Lucid.c //varHour %new_hour%
fart.exe -- Lucid.c //varMin %new_min%
fart.exe -- Lucid.c //varCurrent %new_current%
fart.exe -- Lucid.c //varPdurr %new_pdurr%
fart.exe -- Lucid.c //varNpdurr %new_npdurr%

cls
echo Compiling...

avr-gcc -g -Os -mmcu=atmega328p -c Lucid.c
if errorlevel 1 goto failed_compile
avr-gcc -g -mmcu=atmega328p -o Lucid.elf Lucid.o
avr-objcopy -j .text -j .data -O ihex Lucid.elf Lucid.hex

fart.exe -- Lucid.c %new_hour%  //varHour
fart.exe -- Lucid.c %new_min%  //varMin
fart.exe -- Lucid.c %new_current%  //varCurrent
fart.exe -- Lucid.c %new_pdurr%  //varPdurr
fart.exe -- Lucid.c %new_npdurr%  //varNpdurr

cls

avrdude -p atmega328p -c usbtiny -P -e -U flash:w:Lucid.hex
if errorlevel 1 goto failed_upload

cls
echo Programming Successful! Here are your parameters:
echo Wakeup hour = %hour%
echo Wakeup minute = %min%
echo Current = %current%uA
echo Pulse Durration = %pdurr% minutes
echo Non-Pulse Durration = %npdurr% minutes 
goto done

:failed_compile
echo Failed to compile, make sure that you have selected the right directory in the .bat file
goto done

:failed_upload
echo Oops! Something is wrong please check programmer connections and try again.
echo Also make sure that the correct programmer is selected in the .bat file (see README)

:done
pause