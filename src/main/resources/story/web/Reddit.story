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
When I switch to frame located `By.xpath(//iframe[@class='_25r3t_lrPF3M6zD2YkWvZU'])`
When I change context to element located `By.xpath(//input[@name='email'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//input[@name='email'])`
When I click on element located `By.xpath(//button[text()='Continue'])`
When I switch back to the page
When I switch to frame located `By.xpath(//iframe[@class='_25r3t_lrPF3M6zD2YkWvZU'])`
When I change context to element located `By.xpath(//input[@placeholder='Choose a Username'])`
When I enter `#{generate(Name.firstname)}` in field located `By.xpath(//input[@placeholder='Choose a Username'])`
When I enter `#{generate(Internet.password)}` in field located `By.xpath(//input[@placeholder='Password'])`
When I click on element located `By.xpath(//button[text()='Sign Up'])`
When I switch back to the page
