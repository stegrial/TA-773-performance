require 'spec_helper'
require 'date'

describe 'Preconditions' do

  before(:all) do
    $caps_chrome['chromeOptions']['mobileEmulation'] = {'deviceName' => 'iPhone 5'}
  end

  after(:all) do
    Capybara.current_session.driver.quit
  end

  feature 'TrueAutomation.IO capybara example' do
    scenario 'Element search takes a very long time on the large DOM tree' do

      visit 'https://www.venus.com/products.aspx?BRANCH=7~63~'
      sleep 10
      start_step_1 = Time.now

      1.times do
        find(:xpath, ta('773:venus:subsection:filter', "//button[.//span[text()='Filter']]")).click
        finish_step_1 = Time.now
        puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"
      end

      sleep 3
    end
  end
end