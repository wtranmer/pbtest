set thispath=%~dp0
set orcabinpath=C:\Program Files (x86)\Appeon\Shared\PowerBuilder\orcascr170.exe
for %%i in (%thispath%code\*.pbt) do (
echo start session > build_libs.orca
echo scc set connect property localprojpath "%thispath%" >> build_libs.orca
echo scc connect offline >> build_libs.orca
echo scc set target "%%i" refresh_all importonly >> build_libs.orca
echo scc refresh target full >> build_libs.orca
echo scc close >> build_libs.orca
echo end session >> build_libs.orca
"%orcabinpath%" build_libs.orca
)

pause

REM Make sure the ws_objects is organized with the same structure
REM as where the pbl files will be built
REM
REM for example, if first.pbl will build at root\source\folder1, then
REM ws_objects should look like root\ws_objects\source\folder1\first.pbl.src
REM