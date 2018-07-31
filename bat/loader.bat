@echo off
cd ..\
set load=%1%
set dir=%2%
if exist .\.modloader\git\%load% (
	xcopy /e .\.modloader\git\%load% ..\games\%dir%\mods\%load%\
)
if not exist .\.modloader\git\%load% (
	if exist .\%load% (
		xcopy /e .\%load% ..\games\%dir%\mods\%load%\
	)
	if not exist .\%load% (
		cd .\.modloader\git
		git clone https://github.com/minetest-mods/%load%.git
		cd ..\..\
		xcopy /e .\.modloader\git\%load% ..\games\%dir%\mods\%load%\
	)
)