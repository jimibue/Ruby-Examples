require 'rspec'
require 'selenium-webdriver'
#https://www.youtube.com/watch?v=J_gDfWgTU2c&index=3&list=PL_noPv5wmuO9Z3h_Nq4aEPfzGqrJzhthb
describe 'My behaviour' do

  before(:each) do
    #create a webdriver
    @driver = Selenium::WebDriver.for(:firefox)

    #navigate to a site
    @driver.navigate.to 'file:///Users/jcc/Desktop/Fall%202015/HTML-CSS-Demos/Resume1/index.html'

  end

  it 'should do something' do


    #click on contact link
    @driver.find_element(:id, 'test').click

    #puts put the title
    puts @driver.title

  end
  after(:each)do
    #close the browser
    @driver.quit
  end
end