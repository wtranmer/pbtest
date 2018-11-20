set thispath=%~dp0
set orcabinpath=d:\appeon\shared\powerbuilder\orcascr170.exe
echo start session > build_libs.orca
echo scc set connect property localprojpath "." >> build_libs.orca
echo scc connect offline >> build_libs.orca
for %%i in (*.pbt) do (
echo scc set target ".\%%i" refresh_all importonly >> build_libs.orca
)
echo scc refresh target full >> build_libs.orca
echo scc close >> build_libs.orca
echo end session >> build_libs.orca

"%orcabinpath%" build_libs.orca