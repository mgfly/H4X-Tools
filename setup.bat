@echo off
cls
echo ╔═════════════════════════════════════════════════════════════════════════════════════╗
echo ║      //    / /        \\ / /      /__  ___/ //   ) ) //   ) ) / /        //   ) )   ║
echo ║     //___ / //___/ /   \  /         / /    //   / / //   / / / /        ((          ║
echo ║    / ___   /____  /    / /   ____  / /    //   / / //   / / / /           \\        ║
echo ║   //    / /    / /    / /\\       / /    //   / / //   / / / /              ) )     ║
echo ║  //    / /    / /    / /  \\     / /    ((___/ / ((___/ / / /____/ / ((___ / /      ║
echo ║            ~~~by Vili (https://github.com/v1li)                                     ║
echo ╚═════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo Installing dependencies in 3 seconds...
timeout /t 3 /nobreak > nul
pip3 install -r requirements.txt
echo.
echo.
echo Installing Maigret and Holehe in 3 seconds...
timeout /t 3 /nobreak > nul
pip3 install maigret holehe
timeout /t 1 /nobreak > nul
echo.
echo Done!
echo.

set /p "input=Start H4XTools now? (y/n) -> "
if /i "%input%"=="y" (
    python h4xtools.py
) else (
    echo Exiting...
    timeout /t 1 /nobreak > nul
)
exit
