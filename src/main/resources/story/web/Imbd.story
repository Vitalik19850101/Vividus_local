Description: imbd.com

Scenario: Create new account imbd.com
Given I am on a page with the URL 'https://www.imdb.com/'
When I reset context
When I click on element located `By.xpath(*//div[text()='Sign In'])`
When I click on element located `By.xpath(*//a[text()='Create a New Account'])`
When I enter `Vitali` in field located `By.xpath(*//input[@id='ap_customer_name'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(*//input[@id='ap_email'])`
When I enter `QWErfv123` in field located `By.xpath(*//input[@id='ap_password'])`
When I enter `QWErfv123` in field located `By.xpath(//*[@id='ap_password_check'])`
When I click on element located `By.xpath(//input[@id='continue'])`
When I enter `441431` in field located `By.xpath(//*[@id='cvf-input-code'])`
Then the page with the URL 'https://www.imdb.com/?ref_=nv_home' is loaded
When I enter `How I Met You Mother` in field located `By.xpath(//input[@aria-label='Search IMDb'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button'])`
When I click on element located `By.xpath(//*[@id='react-autowhatever-1--item-0']/a)`
When I click on element located `By.xpath(//div[text()='Add to Watchlist'])`
When I click on element located `By.xpath(//label[@for='navUserMenu'])`
When I click on element located `By.xpath(//span[text()='Your watchlist'])`
When I click on element located `By.xpath(//a[text()='Export this list'])`

