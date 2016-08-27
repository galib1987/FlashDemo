Feature: Multipule users should be able to loging to the account and verify their name, avaiable points and kudos level


Scenario Outline: Multiple users should be able to login to their account and should be able to check their profile info

  Given User navigate to Kudos login page
  Then  User types <username> and <password> on the appropriate fields
  And   User clicks on the login button and login in to their account
  Then  Then user verify his name on the dashbord
  And   User checks for his available points displayed on the dashbord
  Then User checks for his/her Kudos Level and My Points
  Then User checks whether he/she has admin access or not


    Examples:
    |username|password|
    |hugo@domain.com|password|
    |victor@domain.com|password|