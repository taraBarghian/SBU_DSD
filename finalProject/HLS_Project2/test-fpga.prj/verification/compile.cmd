set rundir=%cd%
set scripthome=%~dp0
cd %scripthome%
vsim -batch -do "do tb/sim/mentor/msim_compile.tcl"
set exitCode=%ERRORLEVEL%
cd %rundir%
exit /b %exitCode%
