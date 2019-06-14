
require 'spec_helper'
require 'benchmark'

describe 'Preconditions' do


  after(:all) do
    Capybara.current_session.driver.quit
  end

  feature 'TrueAutomation.IO capybara example' do
    scenario 'Selenium - Create account', selenium: true do

      # User goes to the main page of the site Annieselke
      visit 'https://annieselke.com/'

        # User clicks on close button in offer modal
        within_frame(1) do
              page.execute_script("document.querySelector('button.close').click()")
        end
        Benchmark.bm(10) do |x|

          # User clicks on login button in main page
          x.report('step 1:') { find(:xpath, "//a[text()='Login']").click  }

          # User clicks on create account for starting greating new account
          x.report('step 2:') { find(:xpath, "//h3[text()='Create an Account']").click }

          # User set first name in matching input line
          x.report('step 3:') { find(:xpath, "//input[@id='register.firstName']").set('youre.example@gmail.com') }

          # User set last name in matching input line
          x.report('step 4:') { find(:xpath, "//input[@id='register.lastName']").set('name') }

          # User set email in matching input line
          x.report('step 5:') { find(:xpath, "//input[@id='register.email']").set('name') }

          # User set pass in matching input line
          x.report('step 6:') { find(:xpath, "//input[@id='password']").set('1234tesT') }

          # User repeat pass name in matching input line
          x.report('step 7:') { find(:xpath, "//input[@id='register.checkPwd']").set('1234tesT') }

          # User click in checkbox for subscribe
          x.report('step 8:') { find(:xpath, "//label[@for='subscribe']").click }

          # User click register button to complete the registration
          x.report('step 9:') { find(:xpath, "(//button[@class='primary actionSet'])[2]").click }
          sleep 3
        end
      end

      scenario 'Recording - Create account', ta: true do
        1.times do

          visit 'https://annieselke.com'
          within_frame(1) do
                page.execute_script("document.querySelector('button.close').click()")
          end

          Benchmark.bm(10) do |x|

            p "-------------------------- Analizator -----------------------"
            # User clicks on login button in main page
            x.report('step 1:') { find(:xpath, ta('signature_updating:AS:mainPage:loginDesktop', "//a[text()='Login']")).click }

            # User clicks on create account for starting greating new account
            x.report('step 2:') { find(:xpath, ta('signature_updating:AS:mainPage:createAccount', "//h3[text()='Create an Account']")).click }

            # User set first name in matching input line
            x.report('step 3:') { find(:xpath, ta('signature_updating:AS:loginPage:firstName', "//input[@id='register.firstName']")).set('youre.example@gmail.com') }

            # User set email in matching input line
            x.report('step 4:') { find(:xpath, ta('signature_updating:AS:loginPage:lastName', "//input[@id='register.lastName']")).set('name') }

            "-------------------------- / Analizator -----------------------"
            # User set email in matching input line
            x.report('step 5:') { find(:xpath, ta('signature_updating:AS:loginPage:email', "//input[@id='register.email']")).set('name') }

            p "-------------------------- Analizator -----------------------"
            # User set pass in matching input line
            x.report('step 6:') { find(:xpath, ta('signature_updating:AS:loginPage:password', "//input[@id='password']")).set('1234tesT') }

            # User repeat pass name in matching input line
            x.report('step 7:') { find(:xpath, ta('signature_updating:AS:loginPage:checkPwd', "//input[@id='register.checkPwd']")).set('1234tesT') }

            # User click register button to complete the registration
            x.report('step 8:') { find(:xpath, ta('signature_updating:AS:loginPage:subscribe', "//label[@for='subscribe']")).click }

            # User click register button to complete the registration
            x.report('step 9:') { find(:xpath, ta('signature_updating:AS:loginPage:register', "(//button[@class='primary actionSet'])[2]")).click }

          sleep 5
          end
        end
      end
      scenario 'Searching - Create account', ta: true do

          visit 'https://annieselke.com'
          within_frame(1) do
            page.execute_script("document.querySelector('button.close').click()")
          end

          Benchmark.bm(10) do |x|
            p "-------------------------- Analizator -----------------------"
            # User clicks on login button in main page
            x.report('step 1:') { find(:xpath, ta('signature_updating:AS:mainPage:loginDesktop', "//a[text()='Login']")).click }

            # User clicks on create account for starting greating new account
            x.report('step 2:') { find(:xpath, ta('signature_updating:AS:mainPage:createAccount', "//h3[text()='Create an Account']")).click }

            # User set first name in matching input line
            x.report('step 3:') { find(:xpath, ta('signature_updating:AS:loginPage:firstName', "//input[@id='register.firstName']")).set('youre.example@gmail.com') }

            # User set email in matching input line
            x.report('step 4:') { find(:xpath, ta('signature_updating:AS:loginPage:lastName', "//input[@id='register.lastName']")).set('name') }

            p "-------------------------- Analizator -----------------------"
            # User set email in matching input line
            x.report('step 5:') { find(:xpath, ta('signature_updating:AS:loginPage:email', "//input[@id='register.email']")).set('name') }

            p "-------------------------- Analizator -----------------------"
            # User set pass in matching input line
            x.report('step 6:') { find(:xpath, ta('signature_updating:AS:loginPage:password', "//input[@id='password']")).set('1234tesT') }

            # User repeat pass name in matching input line
            x.report('step 7:') { find(:xpath, ta('signature_updating:AS:loginPage:checkPwd', "//input[@id='register.checkPwd']")).set('1234tesT') }

            # User click register button to complete the registration
            x.report('step 8:') { find(:xpath, ta('signature_updating:AS:loginPage:subscribe', "//label[@for='subscribe']")).click }

            # User click register button to complete the registration
            x.report('step 9:') { find(:xpath, ta('signature_updating:AS:loginPage:register', "(//button[@class='primary actionSet'])[2]")).click }

            sleep 5
          end
      end
    scenario 'Searching 2 - Create account', ta: true do

        visit 'https://annieselke.com'
        within_frame(1) do
          page.execute_script("document.querySelector('button.close').click()")
        end

        Benchmark.bm(10) do |x|
          p "-------------------------- Analizator -----------------------"
          # User clicks on login button in main page
          x.report('step 1:') { find(:xpath, ta('signature_updating:AS:mainPage:loginDesktop', "//a[text()='Login']")).click }

          # User clicks on create account for starting greating new account
          x.report('step 2:') { find(:xpath, ta('signature_updating:AS:mainPage:createAccount', "//h3[text()='Create an Account']")).click }

          # User set first name in matching input line
          x.report('step 3:') { find(:xpath, ta('signature_updating:AS:loginPage:firstName', "//input[@id='register.firstName']")).set('youre.example@gmail.com') }

          # User set email in matching input line
          x.report('step 4:') { find(:xpath, ta('signature_updating:AS:loginPage:lastName', "//input[@id='register.lastName']")).set('name') }

          p "-------------------------- Analizator -----------------------"
          # User set email in matching input line
          x.report('step 5:') { find(:xpath, ta('signature_updating:AS:loginPage:email', "//input[@id='register.email']")).set('name') }

          p "-------------------------- Analizator -----------------------"
          # User set pass in matching input line
          x.report('step 6:') { find(:xpath, ta('signature_updating:AS:loginPage:password', "//input[@id='password']")).set('1234tesT') }

          # User repeat pass name in matching input line
          x.report('step 7:') { find(:xpath, ta('signature_updating:AS:loginPage:checkPwd', "//input[@id='register.checkPwd']")).set('1234tesT') }

          # User click register button to complete the registration
          x.report('step 8:') { find(:xpath, ta('signature_updating:AS:loginPage:subscribe', "//label[@for='subscribe']")).click }

          # User click register button to complete the registration
          x.report('step 9:') { find(:xpath, ta('signature_updating:AS:loginPage:register', "(//button[@class='primary actionSet'])[2]")).click }

          sleep 5
        end
       end
    end
 end
