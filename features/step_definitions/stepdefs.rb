require "watir-webdriver"
SITE = "http://www.cs.uu.nl/education/"
BROWSER = Watir::Browser.start(SITE)
BROWSER.window.resize_to(1920,1080)
PAGES = {
  "Homepage" => "http://www.cs.uu.nl/education/"
}

Given ("I am on {string}") do |page|
  BROWSER.goto(PAGES[page])
end
When("I click on link {string}") do |tekst|
	BROWSER.link(text: tekst).click
end

Then("The page title should start with {string}") do |title|
  BROWSER.title.start_with?(title) == true
end
