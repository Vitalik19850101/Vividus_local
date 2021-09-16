Description: Add to cart

Scenario: Add to cart
Meta:
    ID_4

Lifecycle:
Examples:
/tables/URL.table
Given I am on a page with the URL '<URL_walmart>'
When I reset context
When I enter `car` in field located `By.xpath(//input[@aria-label='Search'])`
When I click on element located `By.xpath(//button[@aria-label='Search icon'])`
When I click on element located `By.xpath((//a[contains(@class, 'absolute')])[1])`
When I click on element located `By.xpath(//span[text()='Add to cart'])`
When I click on element located `By.xpath(//a[@id='hf-cart'])`
Then the page with the URL 'https://www.walmart.com/cart' is loaded