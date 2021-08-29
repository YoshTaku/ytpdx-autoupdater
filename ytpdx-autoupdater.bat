@echo off
title Yosh's Track Pack DX Auto-Updater (v1.0)
echo Yosh's Track Pack DX
echo     Auto-Updater
echo ====================
echo Get the latest version.
echo (Written by YoshTaku.)
echo __
pause
cls
echo Check for program update?
echo Press A for yes, B for no.
SET OPTION=
SET /P OPTION=Enter here: 
IF %OPTION%==A (
	GOTO UpdateCheck
	)
IF %OPTION%==B (
	GOTO Start
	)

:UpdateCheck
cls
echo Checking for update...
wget -i check.txt -P .
ren ytpdx-autoupdater.bat ytpdx-autoupdater.backup.bat
ren ytpdx-autoupdater.bat.1 ytpdx-autoupdater.bat
pause

:Start
cls
echo Upon pressing enter, the program will start
echo its duty by downloading all the necessary
echo files and plopping them in the Downloads
echo folder. Once it starts downloading, do not
echo close the program. Thank you.
echo __
pause
cls
del .\Downloads\test.zip
wget -i download.txt -P .
del download.txt
ren download.txt.1 download.txt
del version.txt
ren version.txt.1 version.txt
move YTPDX-Latest.zip .\Downloads\
del .\Downloads\..txt
title Yosh's Track Pack DX Auto-Updater
more version.txt
echo Thanks for using the Yosh's Track Pack DX installer!
echo __
pause
exit