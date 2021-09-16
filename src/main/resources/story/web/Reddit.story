Meta:
    ID_2

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account reddit.com
Given I am on a page with the URL '<URL_reddit>'
When I reset context
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I refresh the page
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I change context to element located `By.xpath(//input[@name='email'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//input[@name='email-prevent'])`
When I enter `#{generate(User.name)}` in field located `By.xpath(//input[@id='regUsername')`
When I enter `#{generate(Internet.password)}` in field located `By.xpath(//input[@id='regPassword')`
When I click on element located `By.xpath(//button[text()='Sign Up')`
