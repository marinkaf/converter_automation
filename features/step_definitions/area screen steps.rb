Given(/^I land on help popup$/) do
  # puts("User lands on Help popup")
  text("Помощь")
end

When(/^I click on Got in button$/) do
  # find_element(text: "Got It").click
  find_element(id: "button1").click
  # puts("User clicks on Got it button")
end

Then(/^I land on Area screen$/) do
  text("Площадь")
  # puts("User lands on Area screen")
end

When(/^I click on Swap button$/) do
  find_element(id: "fab").click
end

Then(/^I see "([^"]*)" in From header$/) do |value|
  actual_value = find_element(id: "header_text_unit_from").text
  puts("Exexted value is #{value}")
  puts("Actual_value is #{actual_value}")
  # puts("From header value is " + value)
end

And(/^I see "([^"]*)" in to header$/) do |value|
  actual_value = find_element(id: "header_text_unit_to").text
  puts("Exexted value is #{value}")
  puts("Actual_value is #{actual_value}")
end

And(/^I click on Clear button$/) do
  find_element(id: "menu_clear").click
  # puts ("User clicks on Clear button")
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  find_element(id: "header_value_from").send_keys(value)
  end

Then(/^I get "([^"]*)" in To field$/) do |value|
  actual_value = find_element(id: "header_value_to").text
  # puts("Exexted value is #{value}")
  # puts("Actual_value is #{actual_value}")
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

When(/^I click on From field$/) do
  find_element(id: "header_value_from").click
end

And(/^I press "([^"]*)" on soft keybord$/) do |value|
  digits = value.split("")
  digits.each do |key|
   digit = Integer(key)
   press_keycode 7 + digit
end
end

When(/^I select "([^"]*)" from left column$/) do |value|
  # find_element(id:"radio_group_from").find_element(xpath: "/android.widget.RadioButton[@text='Кв. сантиметр']/")
  find_element(id:"radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end



When(/^Я кликаю по кнопке$/) do
  find_element(id: "header_value_from").click
end