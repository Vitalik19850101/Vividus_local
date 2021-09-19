Meta:
    ID_4

Lifecycle:
Examples:
/tables/URL.table

Scenario: Add to cart
Given I am on a page with the URL '<urlwalmart>'
When I reset context
When I enter `car` in field located `By.xpath(//input[@placeholder='Search everything at Walmart online and in store'])`
When I click on element located `By.xpath(//button[@aria-label='Search icon'])`
When I change context to element located `By.xpath((//a[contains(@class, 'absolute')])[1])`
When I click on element located `By.xpath((//a[contains(@class,'absolute')])[1])`
When I click on element located `By.xpath(//span[text()='Add to cart'])`
When I click on element located `By.xpath(//a[@id='hf-cart'])`
