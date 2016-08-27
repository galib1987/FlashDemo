Given(/^User navigate to Kudos login page$/) do
  visit KudosLoginPage
  ##@browser.goto "http://hugo@domain.com:password@107.22.75.223:8080"

end

Then(/^User type username and password on the appropriate fields$/) do
  on(KudosLoginPage).login_with_credentials
end

And(/^User clicks on the login button$/) do
  on(KudosLoginPage).click_on_login_button
  sleep 3

  # browser.alert.set "Text for prompt"
  # browser.alert.ok
  # on(KudosLoginPage).browser_authentication
  # all_windows = @browser.driver.window_handles
  # @browser.driver.switch_to.window(all_windows.last)
  #
  # on(KudosLoginPage).authentication


end




