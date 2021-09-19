Meta:
    ID_3

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account
Given I am on a page with the URL '<urlwalmart>'
When I reset context
When I click on element located `By.xpath(//a[@link-identifier='Account'])`
When I click on element located `By.xpath(//button[text()='Create account'])`
When I enter `<firstName>` in field located `By.xpath(//input[@name='firstName'])`
When I enter `<lastname>` in field located `By.xpath(//input[@name='lastName'])`
When I enter `<email>` in field located `By.xpath(//input[@name='email'])`
When I enter `<password>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//label(<checkBoxClick>))`
When I click on element located `By.xpath(//button[@data-tl-id='signup-submit-btn'])`
Examples:
|email								|firstName						|lastname					|password								|checkBoxClick		   |
|#{generate(Internet.emailAddress)}	|#{generate(Name.firstname)}	|#{generate(Name.lastname)}	|#{generate(regexify'[A-Za-z0-9]{12}')}	|[@for='su-newsletter']|
