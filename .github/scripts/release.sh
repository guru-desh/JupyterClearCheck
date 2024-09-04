#!/bin/bash
set -euo pipefail

if [ -z "$1" ]; then
  echo "Bump type (patch, minor, major) must be provided as an argument."
  exit 1
fi

BUMP_TYPE=$1

python -m pip install --quiet pdm
pdm install

git config --local user.name "GitHub Actions"
git config --local user.email "actions@github.com"

pdm run bump-version $BUMP_TYPE --commit

VERSION=$(pdm show --version)

git checkout -b release/v$VERSION
git push --set-upstream origin release/v$VERSION
gh pr create --title "Release v$VERSION" \
             --body "This PR contains the release version bump to $VERSION." \
             --base main \
             --head release/v$VERSION \
             --label "automated PR"
