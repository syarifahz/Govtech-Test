Before do
  $driver = Selenium::WebDriver.for :chrome
end

After do |scenario|
  if scenario.failed?
    fileScreenshot = "screenshot-#{Time.now.strftime('%Y%m%d-%H%M%S')}.png"
    $driver.save_screenshot(fileScreenshot)
    embed(fileScreenshot, "image/png")
  end

  $driver.quit
end