set thispath=%~dp0
set orcabinpath=C:\Program Files (x86)\Appeon\Shared\PowerBuilder\orcascr170.exe
for %%i in (*.pbt) do (
echo start session > build_libs.orca
echo scc set connect property localprojpath "." >> build_libs.orca
echo scc connect offline >> build_libs.orca
echo scc set target ".\%%i" refresh_all importonly >> build_libs.orca
echo scc refresh target full >> build_libs.orca
echo scc close >> build_libs.orca
echo end session >> build_libs.orca
"%orcabinpath%" build_libs.orca
)

pause