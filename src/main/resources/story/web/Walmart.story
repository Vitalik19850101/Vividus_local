Meta:
    ID_3

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account
Given I am on a page with the URL '<URL_walmart>'
When I reset context
When I click on element located `By.xpath(//a[@link-identifier='Account'])`
!-- When I click on element located `By.xpath(//div[@id='vh-account-menu-root']//a[@title='Sign In'])`
When I click on element located `By.xpath(//button[text()='Create account'])`
When I enter `#{generate(Name.firstname)}` in field located `By.xpath(//[@id='first-name-su'])`
When I enter `#{generate(Name.lastname)}` in field located `By.xpath(//[@id='last-name-su'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//[@id='email-su'])`
When I enter `#{generate(regexify'[A-Za-z0-9]{12}')}` in field located `By.xpath(//*[@id='password-su'])`
When I click on element located `By.xpath(//label[@for='su-newsletter'])`
When I click on element located `By.xpath(//[@id="sign-up-form"]/button[1])`
Then the page with the URL 'https://https://www.walmart.com/account/signup?tid=0&returnUrl=/' is loaded

Scenario: Add to cart
Given I am on a page with the URL '<URL_walmart>'
When I reset context
When I enter `car` in field located `By.xpath(//input[@id='global-search-input'])`
When I click on element located `By.xpath(//[@id='global-search-submit'])`
When I click on element located `By.xpath((//[@id='mainSearchContent']//a[contains(@class,'product-title-link')])[1])`
When I click on element located `By.xpath(//span[text()='Add to cart'])`
When I click on element located `By.xpath(//a[@id='hf-cart'])`
Then the page with the URL 'https://www.walmart.com/cart' is loaded
