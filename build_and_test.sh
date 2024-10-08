#!/bin/bash
set -euo pipefail

python -m pip install --quiet pdm
pdm install --dev
pdm build
pdm run lint_and_format
pdm run test
