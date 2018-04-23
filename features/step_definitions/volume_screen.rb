Then(/^I see app menu$/) do
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Расход топлива']")
  # find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Валюта']")
  # find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Кулинария']")
end

When(/^I swipe in the menu$/) do
 # driver =  Appium::Driver.new(opts, false).start_driver
 # action = TouchAction.new(driver).swipe(start_x: 0.5, start_y: 0.5, end_x: 0.8, end_y: 0.5, duration: 500)
 #  action = Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.5, end_x: 0.8, end_y: 0.5, duration: 500)
 # action.perform

  # Appium::TouchAction.new.swipe(start_x: 0.01, start_y: 0.5, end_x: 0.5, end_y: 0.5, duration: 500).perform
  Appium::TouchAction.new.swipe(start_x: 10, start_y: 1000, end_x: 800, end_y: 1000, duration: 500).perform
  end


And(/^I select "([^"]*)" from menu$/) do |value|
  arg = find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']")
  until exists {arg}
        Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.3, end_x: 0.5, end_y:  0.2, duration: 500).perform
  end
  arg.click
end

Then(/^I land on "([^"]*)" screen$/) do |value|
  find_element(id: "toolbar").find_element(xpath: "//android.widget.TextView[@text='#{value}']")
end

And(/^I swipe menu$/) do
  # Appium::TouchAction.new.swipe(start_x: 0.01, start_y: 0.8, end_x: 0.8, end_y: 0.1, duration: 500).perform
    Appium::TouchAction.new.swipe(start_x: -0.5, start_y: 0.5, end_x: 0.01, end_y: 0.5, duration: 500).perform
  # @driver.touch_action.scroll(element, 10, 100).perform
end

Then(/^I see "([^"]*)"$/) do |value|
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']")
end
