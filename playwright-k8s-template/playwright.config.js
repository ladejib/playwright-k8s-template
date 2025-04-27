// @ts-check
const { defineConfig } = require('@playwright/test');

module.exports = defineConfig({
  testDir: './tests',
  retries: 1,
  workers: 1,
  use: {
    trace: 'on-first-retry',
  },
  reporter: [['html', { outputFolder: 'reports', open: 'never' }]],
});

