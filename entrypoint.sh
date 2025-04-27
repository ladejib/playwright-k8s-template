#!/bin/bash
set -e

echo "[entrypoint] Installing dependencies..."
npm install

echo "[entrypoint] Installing Playwright browsers..."
npx playwright install --with-deps

echo "[entrypoint] Running Playwright tests..."
npx playwright test --config "$GIT_SYNC_ROOT/playwright.config.js"

echo "[entrypoint] Copying reports to /reports volume..."
cp -r ./reports/* /reports/

