@echo off
for %%f in (*.svg) do (
	if exist %%~nf.png (
		echo %%~nf.png exists
	) else (
		echo converting %%~nf.svg
		"C:\Program Files (x86)\Inkscape\inkscape.exe" -z -C -d 300 -f %%~nf.svg -e %%~nf.png
	)
)

pause
