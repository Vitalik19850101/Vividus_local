Meta:
    ID_6

Lifecycle:
Examples:
/tables/URL.table

Scenario: Create new account onliner.com
Given I am on a page with the URL '<urlOnliner>'
When I reset context
When I click on element located `By.xpath(<enter>)`
When I click on element located `By.xpath(<registration>)`
When I enter `<email>` in field located `By.xpath(<emailAdress>)`
When I initialize the SCENARIO variable `<inputPasswordAgain>` with value `<passwordReCheck>`
When I enter `<passwordReCheck>` in field located `By.xpath(<enterPassword>)`
When I enter `<passwordReCheck>` in field located `By.xpath(<rePassword>)`
When I click on element located `By.xpath(<register>)`
Examples:
|passwordReCheck					   |email				 			  |password						 |enter									 |registration	  				        |emailAdress		   |enterPassword						    |rePassword							     |register								  |
|#{generate(regexify'[A-Za-z0-9]{12}')}|#{generate(Internet.emailAddress)}|#{generate(Internet.password)}|(//div[contains(@class,'auth-bar')])[1]|(//a[contains(@class,'auth-form')])[5]|//input[@type='email']|(//input[contains(@type,'password')])[1]|(//input[contains(@type,'password')])[2]|//button[contains(@class,'auth-button')]|

Scenario: Click on top news on onliner.com and put like
Given I am on a page with the URL '<urlOnliner>'
When I reset context
When I click on element located `By.xpath(<topNews>)`
When I click on element located `By.xpath(<like>)`
Examples:
|like									  |topNews							 	 |
|//div[contains(@class,'st-btn st-first')]|(//div[contains(@id,'widget-1-1')])[1]|
