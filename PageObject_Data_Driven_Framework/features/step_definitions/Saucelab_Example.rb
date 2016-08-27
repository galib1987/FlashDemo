Given(/^As user I navigate to Kudos Login page "([^"]*)"$/) do |browser|
  ENV['WHERE']="remote"
  ENV['BROWSER']= browser
  ENV['BROWSER'] = "chrome" if ENV['BROWSER'].nil?
  ENV['WHERE'] = "local" if ENV['WHERE'].nil?
  if(ENV['WHERE']=="remote")
    @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://samer3464:b400189e-8369-445b-9121-57757258e005@ondemand.saucelabs.com:80/wd/hub"})
  else
    @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym)
  end
  @browser.window.maximize
  @browser.goto "http://107.22.75.223:8080/flash-client/?p=home"
end

Then(/^User takes screenshot of kudos recent activity page$/) do
  screenshot_name = ENV['BROWSER'].gsub('|','')
  @browser.screenshot.save "#{screenshot_name}.png"
  embed "#{screenshot_name}.png", "image/png"

end

Then(/^User should be able to click on the recent activity tab$/) do
  on(KudosHomePage).click_on_recent_activity
end

