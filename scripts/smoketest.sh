#!/usr/bin/env bash

set -euo pipefail

BASE_URL="${1:-http://localhost:5186}"

echo "Testing .Net API"

curl -fsS "$BASE_URL/health"

echo "Health endpoint working"

curl -fsS "$BASE_URL/version"

echo "Version endpoint passed"

echo "Smoke test end"
