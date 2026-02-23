@echo off
set CONFIG_PATH=zensical/zensical.toml

echo [PlatForge] Starting local dev server...
echo [PlatForge] Using config: %CONFIG_PATH%

:: Run zensical with the explicit config path
zensical serve -f %CONFIG_PATH%

pause