@echo off
setlocal enabledelayedexpansion

rem Initialize counter
set /a count=1

rem Process all *.jpg files
for %%f in (*.png) do (
    ren "%%f" "ai!count!.jpg"
    set /a count+=1
)

rem Process all *.jpeg files (renaming to .png)
for %%f in (*.jpeg) do (
    ren "%%f" "real!count!.png"
    set /a count+=1
)

echo Renaming complete!
pause
