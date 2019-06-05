require 'spec_helper'
require 'date'

describe 'Preconditions' do

  before(:all) do
    $caps_chrome['chromeOptions']['mobileEmulation'] = {'deviceName' => 'iPhone 5'}
    # Capybara.current_session.driver.browser.manage.window.resize_to(320,568)
  end

  after(:all) do
    Capybara.current_session.driver.quit
    # Capybara.current_session.driver.browser.manage.window.resize_to(1024,640)
  end

  feature 'TrueAutomation.IO capybara example' do
    scenario 'Element search takes a very long time on the large DOM tree' do

      # *** Record ***
      # visit 'https://venus.com'
      #
      # find(:xpath, ta('773:venus:clothing_link', "//button[contains(., 'Clothing')]")).click
      # find(:xpath, ta('773:venus:clothing_section:main_dropdown', "//div[@role='button' and text()='Clothing']")).click
      # find(:xpath, ta('773:venus:clothing_section:main_dropdown:tops', "//li[text()='Tops']")).click

      visit 'https://www.venus.com/products.aspx?BRANCH=7~63~'
      sleep 10
      start_step_1 = Time.now


      1.times do
        find(:xpath, ta('773:venus:subsection:filter', "//button[.//span[text()='Filter']]")).click
        finish_step_1 = Time.now
        puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

        sleep 5
        start_step_2 = Time.now

        find(:xpath, ta('773:venus:subsection:filter:S', "//label[.//span[text()='S (4-6)']]")).click
        finish_step_2 = Time.now
        puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - start_step_2).to_i}"

        sleep 5
        start_step_3 = Time.now

        find(:xpath, ta('773:venus:subsection:filter:view_results', "//button[contains(., 'View Results')]")).click
        finish_step_3 = Time.now
        puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - start_step_3).to_i}"
      end

      sleep 3
    end
  end
end