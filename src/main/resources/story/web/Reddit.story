Description: Reddit.com

Scenario: Create new account reddit.com
Given I am on a page with the URL 'https://www.reddit.com/'
When I reset context
When I click on element located `By.xpath(*//a[text()='Sign Up'])`
When I change context to element located `By.xpath(//input[@name='email')`
When I enter `vi31231ta@gammd.com` in field located `By.xpath(//input[@name='email')`
When I enter `#{generate(User.name)}` in field located `By.xpath(//input[@id='regUsername')`
When I enter `#{generate(Internet.password)}` in field located `By.xpath(//input[@id='regPassword')`
When I click on element located `By.xpath(*//button[text()='Sign Up')`
