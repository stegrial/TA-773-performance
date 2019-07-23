require 'spec_helper'
require 'date'
require 'benchmark'

describe 'Preconditions' do

  before(:all) do
    $caps_chrome['chromeOptions']['mobileEmulation'] = {'deviceName' => 'iPhone 5'}
    # $options.add_emulation(device_name: 'iPhone 5')
  end

  after(:all) do
    Capybara.current_session.driver.quit
  end

  feature 'Testing the speed of Analyzer on the large DOM tree and testing the signature updating' do
    scenario 'Selenium', selenium: true do

      # User goes to the main page of the site Venus
      visit 'https://www.venus.com/products.aspx?BRANCH=7~63~'
      sleep 5

      Benchmark.bm(10) do |x|

      # User clicks on the filter button
      x.report('step 1:') { find(:xpath, "//button[.//span[text()='Filter']]").click }
      sleep 5

      # User check the S size
      x.report('step 2:') { find(:xpath, "//label[.//span[text()='S (4-6)']]").click }
      sleep 5

      # User clicks on the View Results button
      x.report('step 3:') { find(:xpath, "//button[contains(., 'View Results')]").click }

      end
      sleep 3
    end

    scenario 'Recording', ta_record: true do

      # User goes to the main page of the site Venus
      visit 'https://www.venus.com'

      # User clicks on the Clothing button in main menu
      find(:xpath, "//button[contains(., 'Clothing')]").click
      # User clicks on the Clothing dropdown
      find(:xpath, "//div[@role='button' and text()='Clothing']").click
      sleep 2

      # User choose the Tops subsection in the Clothing dropdown
      find(:xpath, "//li[text()='Tops']").click
      sleep 5

      Benchmark.bm(10) do |x|

      # User clicks on the filter button
      x.report('step 1:') { find(:xpath, ta('signature_updating:venus:subsection:filter', "//button[.//span[text()='Filter']]")).click }
      sleep 5

      # User check the S size
      x.report('step 2:') { find(:xpath, ta('signature_updating:venus:subsection:filter:S', "//label[.//span[text()='S (4-6)']]")).click }
      sleep 5

      # User clicks on the View Results button
      x.report('step 3:') { find(:xpath, ta('signature_updating:venus:subsection:filter:view_results', "//button[contains(., 'View Results')]")).click }

      end
      sleep 3
    end

    scenario 'Searching', ta_search: true do

      1.times do
        visit 'https://www.venus.com/products.aspx?BRANCH=7~63~'
        sleep 10

        Benchmark.bm(10) do |x|

        # User clicks on the filter button
        x.report('step 1:') { find(:xpath, ta('signature_updating:venus:subsection:filter', "//button[.//span[text()='Filter']]")).click }
        sleep 5

        # User check the S size
        x.report('step 2:') { find(:xpath, ta('signature_updating:venus:subsection:filter:S', "//label[.//span[text()='S (4-6)']]")).click }
        sleep 5

        # User clicks on the View Results button
        x.report('step 3:') { find(:xpath, ta('signature_updating:venus:subsection:filter:view_results', "//button[contains(., 'View Results')]")).click }

        end
      end
      sleep 3
    end
  end
end