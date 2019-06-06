require 'spec_helper'
require 'date'

describe 'Preconditions' do

  before(:all) do
    $caps_chrome['chromeOptions']['mobileEmulation'] = {'deviceName' => 'iPhone 5'}
  end

  after(:all) do
    Capybara.current_session.driver.quit
  end

  feature 'Testing the speed of Analyzer on the large DOM tree and testing the signature updating' do
    scenario 'Recording' do

      # User goes to the main page of the site Venus
      visit 'https://www.venus.com'

      # User clicks on the Clothing button in main menu
      find(:xpath, "//button[contains(., 'Clothing')]").click
      # User clicks on the Clothing dropdown
      find(:xpath, "//div[@role='button' and text()='Clothing']").click
      # User choose the Tops subsection in the Clothing dropdown
      find(:xpath, "//li[text()='Tops']").click
      # User clicks on the filter button
      find(:xpath, ta('signature_updating:venus:subsection:filter', "//button[.//span[text()='Filter']]")).click
      # User check the S size
      find(:xpath, ta('signature_updating:venus:subsection:filter:S', "//label[.//span[text()='S (4-6)']]")).click
      # User clicks on the View Results button
      find(:xpath, ta('signature_updating:venus:subsection:filter:view_results', "//button[contains(., 'View Results')]")).click

      sleep 3
    end

    scenario 'Searching', speed: true do

      visit 'https://www.venus.com/products.aspx?BRANCH=7~63~'
      sleep 10
      start_step_1 = Time.now

      1.times do
        find(:xpath, ta('signature_updating:venus:subsection:filter', "//button[.//span[text()='Filter']]")).click
        finish_step_1 = Time.now
        puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

        sleep 5
        start_step_2 = Time.now

        find(:xpath, ta('signature_updating:venus:subsection:filter:S', "//label[.//span[text()='S (4-6)']]")).click
        finish_step_2 = Time.now
        puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - start_step_2).to_i}"

        sleep 5
        start_step_3 = Time.now

        find(:xpath, ta('signature_updating:venus:subsection:filter:view_results', "//button[contains(., 'View Results')]")).click
        finish_step_3 = Time.now
        puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - start_step_3).to_i}"
      end

      sleep 3
    end
  end
end