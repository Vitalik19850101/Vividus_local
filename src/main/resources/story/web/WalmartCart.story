Meta:
    ID_4

Lifecycle:
Examples:
/tables/URL.table

Scenario: Add to cart
Given I am on a page with the URL '<URL_walmart>'
When I reset context
When I enter `car` in field located `By.xpath(//input[@aria-label='Search'])`
When I click on element located `By.xpath(//button[@aria-label='Search icon'])`
When I click on element located `By.xpath(//a[@link-identifier='107566679'])`
When I click on element located `By.xpath(//span[text()='Add to cart'])`
When I click on element located `By.xpath(//a[@id='hf-cart'])`
Then the page with the URL 'https://www.walmart.com/cart' is loaded
