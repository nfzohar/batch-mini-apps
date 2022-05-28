@echo off

:: Set window Title and text color.
TITLE Composer Directory Selector
color 0E

:: Changes directory to D: drive (change if necessary)
D:

:: Sets parameter partDir to your workspace folder (change if necessary)
set pathDir="programs/xampp/htdocs" 

cd %pathDir%

:: Displays "interface"
echo ____________________________________________________________________
echo [                                                                  ]
echo [              COMPOSER  DIRECTORY  SELECTOR  V-0.4                ]
echo [__________________________________________________________________]
echo:
echo --------------------------------------------------------------------
echo:
echo Current Directory: %pathDir%
echo:
echo --------------------------------------------------------------------
echo:
echo List Of Project Folders In Current Directory: 
echo:

:: List all subdirectories for pathDir
dir /b /AD-H

echo:
echo --------------------------------------------------------------------
echo:
echo Select a Project Directory to Run Composer In (Press Tab to Select)
echo:
echo Or Press Enter To open Composer In Current Directory
echo:
echo --------------------------------------------------------------------
echo:

:: Sets selected project directory to variable sltDir
set /p input="Project: "
SET sltDir=%input%

cd %sltDir%

:: Opens a new window and runs composer in pathDir directory
start "Composer - %sltDir%" cmd.exe /k composer

:: author: nfzohar