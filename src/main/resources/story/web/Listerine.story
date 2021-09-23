Meta:
    ID_7

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account imbd.com
Given I am on a page with the URL '<urlListerine>'
When I reset context
When I click on element located `By.xpath(<faq>)`
When I change context to element located `By.xpath(//div[@class='row header-top full'])`
When I take screenshot
When I hover mouse over element located `By.xpath(//input[@value='Search'])`
When I change context to element located `By.xpath(//input[@placeholder='Search...'])`
When I enter `*` in field located `By.xpath(//input[@placeholder='Search...'])`
When I click on element located `By.xpath(//input[@value='Search'])`
When I click on element located `By.xpath(<item>)`
When I refresh the page
Then the page with the URL '<url>' is loaded
When I change context to element located `By.xpath(//div[@class='row header-top full'])`
When I hover mouse over element located `By.xpath(//input[@value='Search'])`
When I change context to element located `By.xpath(//input[@placeholder='Search...'])`
When I enter `<needItem>` in field located `By.xpath(//input[@placeholder='Search...'])`
When I click on element located `By.xpath(//input[@value='Search'])`
Then field located `By.xpath(<exitElement>)` exists
When I click on element located `By.xpath(//a[text()='For Professionals'])`
When I switch to a new window
When I reset context
When I click on element located `By.xpath(<signIn>)`
When I wait until element located `By.xpath(//div[@id='janrainModal'])` appears
When I enter `<email>` in field located `By.xpath(//input[@placeholder='Email Address'])`
When I enter `<password>` in field located `By.xpath(//input[@placeholder='Password'])`
When I take screenshot
When I click on element located `By.xpath(<singUp>)`

Examples:
|signIn																		|exitElement																			   |switchWindow										  |singUp														|password							   |email							  |faq				      |item								  |url																		    |needItem								    |
|//div[@id='block-janrain-janrain-user-menu']//a[contains(text(),'Sign In')]|//a[contains(.,'Mint Chewable Tablets')]/ancestor::div[@class='results-content-container']|//title[contains(text(),'Professional For Dentists')]|//button[@id='capture_signIn_traditionalSignIn_createButton']|#{generate(regexify'[A-Za-z0-9]{12}')}|#{generate(Internet.emailAddress)}|(//a[text()='FAQ'])[11]|(//a[contains(@rel,'bookmark')])[3] |https://www.listerine.com/mouthwash/antiseptic/listerine-freshburst-mouthwash|LISTERINE READY! TABS Mint Chewable Tablets|
