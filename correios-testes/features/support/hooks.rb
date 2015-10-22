# before
Before do 
  puts "ANTES DO CENARIO"
end

# after
After do
  puts "DEPOIS DO CENARIO"
end

# # after scenario
# After do |scenario|
#   @browser.screenshot.save("reports/#{scenario.__id__}.png")
#   embed("reports/#{scenario.__id__}.png", "image/png", "SCREENSHOT_#{scenario.__id__}")
# end
