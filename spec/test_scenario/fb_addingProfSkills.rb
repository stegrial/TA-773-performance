require 'spec_helper'
require 'date'
random_string = SecureRandom.hex
describe 'Preconditions' do

  feature 'TrueAutomation.IO capybara example' do
    scenario 'Facebook - adding new professional skills' do

      visit 'https://www.facebook.com'
      sleep 5
      start_step_1 = Time.now

      1.times do
        find(:xpath, ta('performanse:FB:login', "//input[@id='email']")).set('eshapovalov298@gmail.com')
        finish_step_1 = Time.now
        puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

        find(:xpath, ta('performanse:FB:pass', "//input[@id='pass']")).set('Tester1234')
        finish_step_2 = Time.now
        puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - finish_step_1).to_i}"

        find(:xpath, ta('performanse:FB::enter', "//label[@id='loginbutton']")).click
        finish_step_3 = Time.now
        puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - finish_step_2).to_i}"

        find(:xpath, ta('performanse:FB:profile', "//a[@title='Profile']")).click
        finish_step_4 = Time.now
        puts time_step_3 = "time of step 4, seconds: #{(finish_step_4 - finish_step_3).to_i}"

        sleep 5
        start_step_2 = Time.now
        find(:xpath, ta('performanse:FB:aboutBtn', "(//a[text()='About'])[1]")).click
        finish_step_5 = Time.now
        puts time_step_5 = "time of step 5, seconds: #{(finish_step_5 - finish_step_4).to_i}"

        sleep 5
        start_step_3 = Time.now
        find(:xpath, ta('performanse:FB:workEducLink', "(//span[text()='Work and Education'])[1]")).click
        finish_step_6 = Time.now
        puts time_step_6 = "time of step 6, seconds: #{(finish_step_6 - finish_step_5).to_i}"

        sleep 5
        start_step_4 = Time.now
        find(:xpath, ta('performanse:FB:addProfSkill', "//span[text()='Add a professional skill']")).click
        finish_step_7 = Time.now
        puts time_step_7 = "time of step 7, seconds: #{(finish_step_7 - finish_step_6).to_i}"

        sleep 5
        start_step_5 = Time.now
        find(:xpath, ta('performanse:FB:setSkill', "//div[@id='pagelet_edit_eduwork']//input[@data-testid='searchable-text-input']")).send_keys('123', :enter)
        finish_step_8 = Time.now
        puts time_step_8 = "time of step 8, seconds: #{(finish_step_8 - finish_step_7).to_i}"

        find(:xpath, ta('performanse:FB:saveChanges', "(//button[text()='Save Changes'])[2]")).click
        finish_step_9 = Time.now
        puts time_step_9 = "time of step 9, seconds: #{(finish_step_9 - finish_step_8).to_i}"
sleep 5
      end
      sleep 15
    end
  end
end
