@echo off
setlocal enabledelayedexpansion

python -m pip install --quiet pdm
pdm run lint_and_format
pdm run pytest

endlocal
