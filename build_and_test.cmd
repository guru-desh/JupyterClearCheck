@echo off
setlocal enabledelayedexpansion

python -m pip install --quiet pdm
pdm install --dev
pdm build
pdm run lint_and_format
pdm run test

endlocal
