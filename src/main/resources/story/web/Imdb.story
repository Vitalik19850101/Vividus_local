Meta:
    ID_1

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account imbd.com
Given I am on a page with the URL '<URL_imdb>'
When I reset context
When I click on element located `By.xpath(//div[text()='Sign In'])`
When I click on element located `By.xpath(//a[text()='Create a New Account'])`
When I enter `#{generate(Name.firstname)}` in field located `By.xpath(//input[@name='customerName'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//input[@id='ap_email'])`
When I initialize the SCENARIO variable `<password_re_check>` with value `<PAS>`
When I enter `<PAS>` in field located `By.xpath(//input[@id='ap_password'])`
When I enter `<PAS>` in field located `By.xpath(//input[@name='passwordCheck'])`
When I click on element located `By.xpath(//input[@id='continue'])`
Examples:
|PAS										|
|#{generate(regexify'[A-Za-z0-9]{12}')}		|
