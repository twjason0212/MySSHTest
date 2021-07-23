@echo off
setlocal enabledelayedexpansion
echo please make sure you are admin！
echo 执行此脚本前，请确认已经安装解压缩程序7-Zip
:::::::::: 配置参数 ::::::::::
::解压程序WinRAR.exe所在目录 32位%ProgramFiles(x86)% 或64位 %ProgramFiles%
set 7ZipDir=%ProgramFiles%\7-Zip

REM 当前目录下用来测试的压缩包
set plegodemo=deploy.rar

:: 解压
set curdir=%~dp0
set deploydir=C:\api
set "plegodemodir=!plegodemo:.zip=!"
:: C:\01_MyApp\7-Zip\7z.exe x newPack.zip -oc:\Doc -aoa
start /wait "" "!7ZipDir!\7z.exe" x !curdir!!plegodemo! -o!deploydir!\!plegodemodir!\ -aoa

