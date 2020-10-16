@echo off
chcp 65001
IF "%~1"=="" GOTO :EOF
IF NOT EXIST %1 GOTO :EOF



Setlocal enabledelayedexpansion

For /R %1 %%a in (*.jpg *.jpeg *.png *.pdf) Do (
Set sourcefile="%%a"
Set outputfile="%%a"
echo !sourcefile!
echo !outputfile!
tesseract !sourcefile! !outputfile!_kw_rus -l rus
tesseract !sourcefile! !outputfile!_kw_eng -l eng
tesseract !sourcefile! !outputfile!_kw_deu -l deu
)
@PAUSE
