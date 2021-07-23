"C:\Program Files\WinRAR\Rar.exe"  a deploy.zip -ep1 C:\Users\JASON\source\repos\WinFormsApp1\WinFormsApp1\bin\Debug\netcoreapp3.1\*

echo rar part1

setlocal enabledelayedexpansion
echo please make sure you are admin
set 7ZipDir=%ProgramFiles%\7-Zip

set plegodemo=deploy.zip

set curdir=%~dp0
set deploydir=C:\api
set "plegodemodir=!plegodemo:.zip=!"
start /wait "" "!7ZipDir!\7z.exe" x !curdir!!plegodemo! -o!deploydir!\!plegodemodir!\ -aoa


echo part2 end
