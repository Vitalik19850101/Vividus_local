Meta:
    ID_2

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account reddit.com
Given I am on a page with the URL '<urlReddit>'
When I reset context
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I refresh the page
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I switch to frame located `By.xpath(//iframe[contains(@src,'actionSource=header_signup')])`
When I change context to element located `By.xpath(//input[@name='email'])`
When I enter `<email>` in field located `By.xpath(//input[@name='email'])`
When I click on element located `By.xpath(//button[text()='Continue'])`
When I switch back to the page
When I switch to frame located `By.xpath(//iframe[contains(@src,'actionSource=header_signup')])`
When I change context to element located `By.xpath(//input[@placeholder='Choose a Username'])`
When I enter `<firstName>` in field located `By.xpath(//input[@placeholder='Choose a Username'])`
When I enter `<password>` in field located `By.xpath(//input[@placeholder='Password'])`
When I click on element located `By.xpath(//button[text()='Sign Up'])`
When I switch back to the page
Examples:
|email										|firstName						|password						|
|#{generate(Internet.emailAddress)}			|#{generate(Name.firstname)}	|#{generate(Internet.password)}	|
