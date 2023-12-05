Given(/^user see login page$/) do
  path = 'https://www.saucedemo.com/'
  $driver.navigate.to path
  $driver.manage.window.maximize
  $driver.find_element(xpath: '//div[@class="login_logo"]')
end

When(/^user input username "([^"]*)"$/) do |username|
  username_field = $driver.find_element(id: 'user-name')
  username_field.send_keys username
end

When(/^user input password "([^"]*)"$/) do |password|
  password_field = $driver.find_element(id: 'password')
  password_field.send_keys password
end

When(/^user click login button$/) do
  login_button = $driver.find_element(id: 'login-button')
  login_button.click
end

Then(/^user see homepage$/) do
  #waiting for homepage to be displayed
  sleep 2
  $driver.find_element(xpath: '//div[@id="page_wrapper"]')
  $driver.find_element(xpath: '//div[@id="shopping_cart_container"]')
  $driver.find_element(xpath: '//div[@class="header_secondary_container"]')
end

Then(/^user see error message "([^"]*)"$/) do |error_msg|
  $driver.find_element(xpath: "//*[contains(text(),'#{error_msg}')]")
end

Then(/^user see homepage with delayed$/) do
  #waiting for homepage to be displayed
  sleep 7
  $driver.find_element(xpath: '//div[@id="page_wrapper"]')
  $driver.find_element(xpath: '//div[@id="shopping_cart_container"]')
  $driver.find_element(xpath: '//div[@class="header_secondary_container"]')
end

Then(/^user see homepage visual is failure$/) do
  $driver.find_element(xpath: '//*[contains(@class, "shopping_cart_container") and contains(@class, "visual_failure")]')
  $driver.find_element(xpath: '//*[contains(@class, "bm-icon") and contains(@class, "visual_failure")]')
end

When(/^user successfully add sauce lab backpack to cart$/) do
  add_button = $driver.find_element(id: 'add-to-cart-sauce-labs-backpack')
  add_button.click
  $driver.find_element(id: 'remove-sauce-labs-backpack')
end

When(/^user click on remove button on sauce lab backpack item$/) do
  remove_button = $driver.find_element(id: 'remove-sauce-labs-backpack')
  remove_button.click
end

Then(/^user see cart not remove$/) do
  $driver.find_element(id: 'remove-sauce-labs-backpack')
end
