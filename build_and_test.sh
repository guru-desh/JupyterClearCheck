#!/bin/bash
set -euo pipefail

python -m pip install --quiet pdm
pdm install
pdm run lint_and_format
pdm run test
