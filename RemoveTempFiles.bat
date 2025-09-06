@echo off
:: @echo off just makes it so commands wont be shown in cmd (i think)
echo RemoveTempFile's - Made by Ode - Version 1.0
echo.
:: the second echo is just so when the bat file is ran there is a space between the top message and the next. the dot after echo makes it print a empty line. i make it do that as i feel like it makes the text easier to read
echo This is just a quick batch script that deletes all files within Temp and Prefetch.
echo The files in those folders are temporary and useless files.
echo Not all files in those folders can be deleted as most are in use. 
echo If you wanna delete as much as possible then close all apps. 
echo Make sure they are closed from tray aswell.
echo.
:: above is just some info about this script that gets printed out in the terminal
pause
:: pause makes the script wait for some sort of user input before contiuing before continuing
echo Deleting the files in 5 seconds
echo Warnings will likely appear as some files are actively being used so windows wont be able to delete those
timeout /t 5
echo.
:: timeout makes the script wait and /t 5 specifies how long the script waits. i could add /nobreak to make it so the user has to wait out the timer but neh
DEL /Q /S "C:\Windows\Prefetch\*"
DEL /Q /S "C:\Windows\Temp\*"
DEL /Q /S "%temp%\*"
:: del is the thing that deletes stuff and /q stands for "quiet mode". quiet mode just makes it so that confirmation prompts wont pop up. the /S argument makes it go into subfolders and clean them out aswell (it wont delete the subfolders themselves only files inside them. the reason for why it cant is because "del" is used for deleting files and not folders. i would have to use RMDIR to delete the folders too but i dont have much experience with that but i might add that in a future version. anyway this comment is very long haha why are you still reading?)
:: and with the last folder i can just use %temp% because that is a variable that points to the users temp folder and that saves me time so i wont have to sit and try and make the script pull the users username and then add that to the command
echo.
echo Done deleting files. Again there will most likely be errors are some files are still in use and cannot be deleted.
echo Press any button to exit script.
pause