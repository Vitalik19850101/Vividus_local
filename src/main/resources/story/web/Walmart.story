Meta:
    ID_3

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account
Given I am on a page with the URL '<URL_walmart>'
When I reset context
When I click on element located `By.xpath(//a[@link-identifier='Account'])`
When I click on element located `By.xpath(//button[text()='Create account'])`
When I enter `#{generate(Name.firstname)}` in field located `By.xpath(//input[@name='firstName'])`
When I enter `#{generate(Name.lastname)}` in field located `By.xpath(//input[@name='lastName'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//input[@name='email'])`
When I enter `#{generate(regexify'[A-Za-z0-9]{12}')}` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//label[@for='su-newsletter'])`
When I click on element located `By.xpath(//button[@data-tl-id='signup-submit-btn'])`

Scenario: Add to cart
Given I am on a page with the URL '<URL_walmart>'
When I reset context
When I enter `car` in field located `By.xpath(//input[@aria-label='Search'])`
When I click on element located `By.xpath(//button[@aria-label='Search icon'])`
When I click on element located `By.xpath((//a[contains(@class, 'absolute')])[1])`
When I click on element located `By.xpath(//span[text()='Add to cart'])`
When I click on element located `By.xpath(//a[@id='hf-cart'])`
Then the page with the URL 'https://www.walmart.com/cart' is loaded
