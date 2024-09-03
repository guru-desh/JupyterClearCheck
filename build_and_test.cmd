@echo off
setlocal enabledelayedexpansion

python -m pip install --quiet pdm
pdm install
pdm run lint_and_format
pdm run test

endlocal
