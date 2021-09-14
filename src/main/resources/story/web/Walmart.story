Description: Wallmat.com, Reddit.com, Imbd.com;

Scenario: Create new account
Given I am on a page with the URL 'https://www.walmart.com/'
When I reset context
When I click on element located `By.xpath(//button[@id='hf-account-flyout'])`
When I click on element located `By.xpath(//div[@id='vh-account-menu-root']//a[@title='Sign In'])`
When I click on element located `By.xpath(//button[text()='Create account'])`
When I enter `#{generate(Name.firstname)}` in field located `By.xpath(//*[@id='first-name-su'])`
When I enter `#{generate(Name.lastname)}` in field located `By.xpath(//*[@id='last-name-su'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//*[@id='email-su'])`
When I enter `#{generate(regexify'[A-Za-z0-9]{12}')}` in field located `By.xpath(//*[@id='password-su'])`
When I click on element located `By.xpath(//label[@for='su-newsletter'])`
When I click on element located `By.xpath(//*[@id="sign-up-form"]/button[1])`
Then the page with the URL 'https://https://www.walmart.com/account/signup?tid=0&returnUrl=/' is loaded

Scenario: Add to cart
Given I am on a page with the URL 'https://www.walmart.com/'
When I reset context
When I enter `car` in field located `By.xpath(//input[@id='global-search-input'])`
When I click on element located `By.xpath(//[@id='global-search-submit'])`
When I click on element located `By.xpath((//[@id='mainSearchContent']//a[contains(@class,'product-title-link')])[1])`
When I click on element located `By.xpath(//span[text()='Add to cart'])`
When I click on element located `By.xpath(//a[@id='hf-cart'])`
Then the page with the URL 'https://www.walmart.com/cart' is loaded

Scenario: Create new account imbd.com
Given I am on a page with the URL 'https://www.imdb.com/'
When I reset context
When I click on element located `By.xpath(*//div[text()='Sign In'])`
When I click on element located `By.xpath(*//a[text()='Create a New Account'])`
When I enter `Vitali` in field located `By.xpath(*//input[@id='ap_customer_name'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(*//input[@id='ap_email'])`
When I enter `QWErfv123` in field located `By.xpath(*//input[@id='ap_password'])`
When I enter `QWErfv123` in field located `By.xpath(//*[@id='ap_password_check'])`
When I click on element located `By.xpath(//input[@id='continue'])`
When I enter `441431` in field located `By.xpath(//*[@id='cvf-input-code'])
Then the page with the URL 'https://www.imdb.com/?ref_=nv_home' is loaded
When I enter `How I Met You Mother` in field located `By.xpath(//input[@aria-label='Search IMDb'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button'])`
When I click on element located `By.xpath(//*[@id='react-autowhatever-1--item-0']/a)`
When I click on element located `By.xpath(//div[text()='Add to Watchlist'])`
When I click on element located `By.xpath(//label[@for='navUserMenu'])`
When I click on element located `By.xpath(//span[text()='Your watchlist'])`
When I click on element located `By.xpath(//a[text()='Export this list'])`

Scenario: Create new account reddit.com
Given I am on a page with the URL 'https://www.reddit.com/'
When I reset context
When I click on element located `By.xpath(*//a[text()='Sign Up'])`
When I enter `vi31231ta@gammd.com` in field located `By.xpath(//input[@name='email')`
When I enter `#{generate(User.name)}` in field located `By.xpath(//input[@id='regUsername')`
When I enter `#{generate(Internet.password)}` in field located `By.xpath(//input[@id='regPassword')`
When I click on element located `By.xpath(*//button[text()='Sign Up')`
