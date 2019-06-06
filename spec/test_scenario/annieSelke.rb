
require 'spec_helper'
feature 'TrueAutomation.IO capybara example' do
  scenario 'Annie Selke - Create account' do
    visit 'https://annieselke.com/'

    sleep 5
    within_frame(1) do
        page.execute_script("document.querySelector('button.close').click()")
    end
    sleep 5
    start_step_1 = Time.now

    1.times do

      find(:xpath, ta('performanse:AS:mainPage:loginDesktop', "//a[text()='Login']")).click
      finish_step_1 = Time.now
      puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

      find(:xpath, ta('performanse:AS:mainPage:createAccount', "//h3[text()='Create an Account']")).click
      finish_step_2 = Time.now
      puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - finish_step_1).to_i}"

      find(:xpath, ta('performanse:AS:loginPage:firstName', "//input[@id='register.firstName']")).set('youre.example@gmail.com')
      finish_step_3 = Time.now
      puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - finish_step_2).to_i}"

      find(:xpath, ta('performanse:AS:loginPage:lastName', "//input[@id='register.lastName']")).set('name')
      finish_step_4 = Time.now
      puts time_step_4 = "time of step 4, seconds: #{(finish_step_4 - finish_step_3).to_i}"

      find(:xpath, ta('performanse:AS:loginPage:email', "//input[@id='register.email']")).set('name')
      finish_step_5 = Time.now
      puts time_step_5 = "time of step 5, seconds: #{(finish_step_5 - finish_step_4).to_i}"

      find(:xpath, ta('performanse:AS:loginPage:password', "//input[@id='password']")).set('1234tesT')
      finish_step_6 = Time.now
      puts time_step_6 = "time of step 6, seconds: #{(finish_step_6 - finish_step_5).to_i}"

      find(:xpath, ta('performanse:AS:loginPage:checkPwd', "//input[@id='register.checkPwd']")).set('1234tesT')
      finish_step_7 = Time.now
      puts time_step_7 = "time of step 7, seconds: #{(finish_step_7 - finish_step_6).to_i}"

      find(:xpath, ta('performanse:AS:loginPage:subscribe', "//label[@for='subscribe']")).click
      finish_step_8 = Time.now
      puts time_step_8 = "time of step 8, seconds: #{(finish_step_8 - finish_step_7).to_i}"

      find(:xpath, ta('performanse:AS:loginPage:register', "(//button[@class='primary actionSet'])[2]")).click
      finish_step_9 = Time.now
      puts time_step_9 = "time of step 9, seconds: #{(finish_step_9 - finish_step_8).to_i}"

      sleep 5
  end

  end
end
