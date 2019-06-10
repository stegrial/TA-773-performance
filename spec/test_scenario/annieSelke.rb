
require 'spec_helper'
feature 'TrueAutomation.IO capybara example' do

  scenario 'Recording - Create account' do

    # User goes to the main page of the site Annieselke
    visit 'https://annieselke.com/'

      # User clicks on close button in offer modal
      within_frame(1) do
            page.execute_script("document.querySelector('button.close').click()")
      end
      # User clicks on login button in main page
      find(:xpath, ta('signature_updating:AS:mainPage:loginDesktop', "//a[text()='Login']")).click
      # User clicks on create account for starting greating new account
      find(:xpath, ta('signature_updating:AS:mainPage:createAccount', "//h3[text()='Create an Account']")).click
      # User set first name in matching input line
      find(:xpath, ta('signature_updating:AS:loginPage:firstName', "//input[@id='register.firstName']")).set('youre.example@gmail.com')
      # User set last name in matching input line
      find(:xpath, ta('signature_updating:AS:loginPage:lastName', "//input[@id='register.lastName']")).set('name')
      # User set email in matching input line
      find(:xpath, ta('signature_updating:AS:loginPage:email', "//input[@id='register.email']")).set('name')
      # User set pass in matching input line
      find(:xpath, ta('signature_updating:AS:loginPage:password', "//input[@id='password']")).set('1234tesT')
      # User repeat pass name in matching input line
      find(:xpath, ta('signature_updating:AS:loginPage:checkPwd', "//input[@id='register.checkPwd']")).set('1234tesT')
      # User click in checkbox for subscribe
      find(:xpath, ta('signature_updating:AS:loginPage:subscribe', "//label[@for='subscribe']")).click
      # User click register button to complete the registration
      find(:xpath, ta('signature_updating:AS:loginPage:register', "(//button[@class='primary actionSet'])[2]")).click

      sleep 3
    end

    #we need to break the session, as the site uses frames
    scenario 'Searching - Create account' do
      1.times do

        visit 'https://annieselke.com'
        within_frame(1) do
              page.execute_script("document.querySelector('button.close').click()")
        end

        sleep 5
        start_step_1 = Time.now

        find(:xpath, ta('signature_updating:AS:mainPage:loginDesktop', "//a[text()='Login']")).click
        finish_step_1 = Time.now
        puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

        sleep 5
        start_step_2 = Time.now

        find(:xpath, ta('signature_updating:AS:mainPage:createAccount', "//h3[text()='Create an Account']")).click
        finish_step_2 = Time.now
        puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - start_step_2).to_i}"

        sleep 5
        start_step_3 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:firstName', "//input[@id='register.firstName']")).set('youre.example@gmail.com')
        finish_step_3 = Time.now
        puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - start_step_3).to_i}"

        sleep 5
        start_step_4 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:lastName', "//input[@id='register.lastName']")).set('name')
        finish_step_4 = Time.now
        puts time_step_4 = "time of step 4, seconds: #{(finish_step_4 - start_step_4).to_i}"

        sleep 5
        start_step_5 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:email', "//input[@id='register.email']")).set('name')
        finish_step_5 = Time.now
        puts time_step_5 = "time of step 5, seconds: #{(finish_step_5 - start_step_5).to_i}"

        sleep 5
        start_step_6 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:password', "//input[@id='password']")).set('1234tesT')
        finish_step_6 = Time.now
        puts time_step_6 = "time of step 6, seconds: #{(finish_step_6 - start_step_6).to_i}"

        sleep 5
        start_step_7 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:checkPwd', "//input[@id='register.checkPwd']")).set('1234tesT')
        finish_step_7 = Time.now
        puts time_step_7 = "time of step 7, seconds: #{(finish_step_7 - start_step_7).to_i}"

        sleep 5
        start_step_8 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:subscribe', "//label[@for='subscribe']")).click
        finish_step_8 = Time.now
        puts time_step_8 = "time of step 8, seconds: #{(finish_step_8 - start_step_8).to_i}"

        sleep 5
        start_step_9 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:register', "(//button[@class='primary actionSet'])[2]")).click
        finish_step_9 = Time.now
        puts time_step_9 = "time of step 9, seconds: #{(finish_step_9 - start_step_9).to_i}"

        sleep 5
        end
      end
      scenario 'Repeat Searching - Create account' do
      1.times do
        visit 'https://annieselke.com'
        within_frame(1) do
            page.execute_script("document.querySelector('button.close').click()")
        end

        sleep 5
        start_step_1 = Time.now

        find(:xpath, ta('signature_updating:AS:mainPage:loginDesktop', "//a[text()='Login']")).click
        finish_step_1 = Time.now
        puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

        sleep 5
        start_step_2 = Time.now

        find(:xpath, ta('signature_updating:AS:mainPage:createAccount', "//h3[text()='Create an Account']")).click
        finish_step_2 = Time.now
        puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - start_step_2).to_i}"

        sleep 5
        start_step_3 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:firstName', "//input[@id='register.firstName']")).set('youre.example@gmail.com')
        finish_step_3 = Time.now
        puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - start_step_3).to_i}"

        sleep 5
        start_step_4 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:lastName', "//input[@id='register.lastName']")).set('name')
        finish_step_4 = Time.now
        puts time_step_4 = "time of step 4, seconds: #{(finish_step_4 - start_step_4).to_i}"

        sleep 5
        start_step_5 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:email', "//input[@id='register.email']")).set('name')
        finish_step_5 = Time.now
        puts time_step_5 = "time of step 5, seconds: #{(finish_step_5 - start_step_5).to_i}"

        sleep 5
        start_step_6 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:password', "//input[@id='password']")).set('1234tesT')
        finish_step_6 = Time.now
        puts time_step_6 = "time of step 6, seconds: #{(finish_step_6 - start_step_6).to_i}"

        sleep 5
        start_step_7 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:checkPwd', "//input[@id='register.checkPwd']")).set('1234tesT')
        finish_step_7 = Time.now
        puts time_step_7 = "time of step 7, seconds: #{(finish_step_7 - start_step_7).to_i}"

        sleep 5
        start_step_8 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:subscribe', "//label[@for='subscribe']")).click
        finish_step_8 = Time.now
        puts time_step_8 = "time of step 8, seconds: #{(finish_step_8 - start_step_8).to_i}"

        sleep 5
        start_step_9 = Time.now

        find(:xpath, ta('signature_updating:AS:loginPage:register', "(//button[@class='primary actionSet'])[2]")).click
        finish_step_9 = Time.now
        puts time_step_9 = "time of step 9, seconds: #{(finish_step_9 - start_step_9).to_i}"

        sleep 5
        end
      end
   end
