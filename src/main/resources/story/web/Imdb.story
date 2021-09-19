Meta:
    ID_1

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account imbd.com
Given I am on a page with the URL '<urlimdb>'
When I reset context
When I click on element located `By.xpath(//div[text()='Sign In'])`
When I click on element located `By.xpath(//a[text()='Create a New Account'])`
When I enter `<firstName>` in field located `By.xpath(//input[@name='customerName'])`
When I enter `<email>` in field located `By.xpath(//input[@id='ap_email'])`
When I initialize the SCENARIO variable `<inputPasswordAgain>` with value `<passwordReCheck>`
When I enter `<passwordReCheck>` in field located `By.xpath(//input[@id='ap_password'])`
When I enter `<passwordReCheck>` in field located `By.xpath(//input[@name='passwordCheck'])`
When I click on element located `By.xpath(//input[@id='continue'])`
Examples:
|passwordReCheck							|firstName						|email								|
|#{generate(regexify'[A-Za-z0-9]{12}')}		|#{generate(Name.firstname)}	|#{generate(Internet.emailAddress)}	|
