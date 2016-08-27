Then(/^User types (.*) and (.*) on the appropriate fields$/) do |username, password|
  on(KudosLoginPage).user_name.when_present.set username
  on(KudosLoginPage).pass_word.when_present.set password
end

And(/^User clicks on the login button and login in to their account$/) do
  on(KudosLoginPage).click_on_login_button
end

Then(/^Then user verify his name on the dashbord$/) do
  pending
end

And(/^User checks for his available points displayed on the dashbord$/) do
  pending
end

Then(/^User checks for his\/her Kudos Level and My Points$/) do
  pending
end

Then(/^User checks whether he\/she has admin access or not$/) do
  pending
end