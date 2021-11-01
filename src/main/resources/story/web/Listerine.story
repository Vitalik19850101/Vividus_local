Meta:
    ID_7

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account Listerine.com
Given I am on a page with the URL '<urlListerine>'
When I reset context
When I click on element located `By.xpath(<faq>)`
When I change context to element located `By.xpath(//div[@class='row header-top full'])`
When I take screenshot and save it to folder `C:\vividus_starter\vividus-starter\src\main\resources\Screenshots\screenshot.bmp`
When I hover mouse over element located `By.xpath(<search>)`
When I change context to element located `By.xpath(<searchInHeader>)`
When I enter `*` in field located `By.xpath(<searchInHeader>)`
When I click on element located `By.xpath(<search>)`
When I click on element located `By.xpath(<item>)`
When I refresh the page
Then the page with the URL '<url>' is loaded
When I change context to element located `By.xpath(//div[@class='row header-top full'])`
When I hover mouse over element located `By.xpath(<search>)`
When I change context to element located `By.xpath(<searchInHeader>)`
When I enter `<needItem>` in field located `By.xpath(<searchInHeader>)`
When I click on element located `By.xpath(<search>)`
Then field located `By.xpath(<exitElement>)` exists
When I click on element located `By.xpath(//a[text()='For Professionals'])`
When I switch to a new window
When I reset context
When I click on element located `By.xpath(<signIn>)`
When I wait until element located `By.xpath(//div[@id='janrainEmbedded'])` appears
When I reset context
When I enter `<email>` in field located `By.xpath(//input[@placeholder='Email Address'])`
When I enter `<password>` in field located `By.xpath(//input[@placeholder='Password'])`
When I take screenshot and save it to folder `C:\vividus_starter\vividus-starter\src\main\resources\Screenshots\screenshot_1.bmp`
When I click on element located `By.xpath(<singUp>)`

Examples:
|signIn                                                                     |exitElement                                                                               |switchWindow                                         |singUp                                                       |password                              |email                             |faq                        |item                               |url                                                                          |needItem                                   |search                  |searchInHeader                   |
|//div[@id='block-janrain-janrain-user-menu']//a[contains(text(),'Sign In')]|//a[contains(.,'Mint Chewable Tablets')]/ancestor::div[@class='results-content-container']|//title[contains(text(),'Professional For Dentists')]|//button[@id='capture_signIn_traditionalSignIn_createButton']|#{generate(regexify'[A-Za-z0-9]{12}')}|#{generate(Internet.emailAddress)}|(//a[text()='FAQ'])[last()]|(//a[contains(@rel,'bookmark')])[3]|https://www.listerine.com/mouthwash/antiseptic/listerine-freshburst-mouthwash|LISTERINE READY! TABS Mint Chewable Tablets|//input[@value='Search']|//input[@placeholder='Search...']|
