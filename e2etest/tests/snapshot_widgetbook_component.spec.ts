import { test } from '@playwright/test';

const components = [
    "custombutton/disabled",
    "custombutton/enabled"
]

components.forEach((component) => {
    test(`snapshot Widgetbook component: ${component}`, async ({ page }) => {
      await page.goto(`http://localhost:3000/#/?path=components/${component}`);

      // wait loading Flutter
      await page.locator("flutter-view").click();

      await page.screenshot({
        path: `./screenshot/component/${component.replace('/', '_')}.png`
      })
    });
})