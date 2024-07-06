import { test } from "@playwright/test";

const pages = ["custompage/custompage"];

pages.forEach((page_name) => {
  test(`snapshot Widgetbook page: ${page_name}`, async ({ page }) => {
    await page.goto(`http://localhost:3000/#/?path=pages/${page_name}`);

    // wait loading Flutter
    await page.locator("flutter-view").click();

    await page.screenshot({
      path: `./screenshots/pages/${page_name.replace("/", "_")}.png`,
    });
  });
});
