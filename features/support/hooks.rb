# gerando evidências após finalizar o cenário ou falha de cenário
AfterStep do |scenario|
  screenshot = "Step.png"
  Capybara.page.driver.browser.save_screenshot(screenshot)
  encoded_img =Capybara.page.driver.browser.screenshot_as(:base64)
  embed("data:image/png;base64,#{encoded_img}",'image/png')
end

After do |scenario|
  if scenario.failed?
    screenshot = "Falha.png"
    Capybara.page.driver.browser.save_screenshot(screenshot)
    encoded_img = Capybara.page.driver.browser.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
end
