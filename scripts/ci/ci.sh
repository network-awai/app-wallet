#!/usr/bin/env bash
# JUN-1321: same steps as .github/workflows/ci.yml (job `test`), runnable by hand so the
# check does not depend on GitHub Actions. Needs node 22+ and npm.
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/../.."
npm ci
npm test
npm run build
echo "app-wallet ci check passed"
