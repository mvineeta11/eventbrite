require 'watir'
require 'page-object'
require 'page-object/page_factory' #visit pages or be on pages that read well

browser_arguments = {}

caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' =>{detach:true}) # for selenium grid
browser_arguments[:desired_capabilities] = caps
browser = Watir::Browser.new :chrome, browser_arguments  #browser=Watir::Browser.new :chrome,{detach:true} -->chrome driver is separate from chrome

this_file_location = File.dirname __FILE__ #the current file we're in
config_file_path = this_file_location + '/../../config/config.yml'
config = YAML.load_file config_file_path #???? yml file is like test data

BASE_URL = config['testApplicationUrl']

World PageObject::PageFactory  #adding page factory to cucumber world
puts BASE_URL

Before do
  @browser = browser
  @browser.driver.manage.window.maximize
end

at_exit do
  # browser.close
end

