Meta:
    ID_5

Lifecycle:
Examples:
/tables/URL.table

Scenario: Add to watchlist
Given I am on a page with the URL '<URL_imdb>'
When I reset context
When I click on element located `By.xpath(//div[text()='Sign In'])`
When I click on all elements located `By.xpath(//span[text()='Sign in with IMDb'])`
When I enter `vumirgorodskiy@gmail.com` in field located `By.xpath(//input[@name='email'])`
When I enter `Vitalik=-44` in field located `By.xpath(//input[@name='password'])`
When I click on all elements located `By.xpath(//input[@id='signInSubmit'])`
When I reset context
When I enter `Orphan` in field located `By.xpath(//input[@placeholder='Search IMDb'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button'])`
When I click on element located `By.xpath((//a[text()='Orphan'])[1])`
When I click on element located `By.xpath((//div[text()='Watchlist'])[1])`
When I click on element located `By.xpath(//div[text()='Watchlist'])`
When I click on element located `By.xpath(//a[text()='Export this list'])`
