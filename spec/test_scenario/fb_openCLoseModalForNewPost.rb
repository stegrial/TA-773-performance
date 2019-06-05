require 'spec_helper'
require 'date'

describe 'Preconditions' do

  feature 'TrueAutomation.IO capybara example' do
    scenario 'Facebook - open/close modal for new post' do

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

        find(:xpath, ta('performanse:FB:addPost', "//span[text()='Create Post']")).click
        finish_step_4 = Time.now
        puts time_step_4 = "time of step 4, seconds: #{(finish_step_4 - finish_step_3).to_i}"

        find(:xpath, ta('performanse:FB:closeModal', "//div[@data-testid='react-composer-close-button']")).click
        finish_step_5 = Time.now
        puts time_step_5 = "time of step 5, seconds: #{(finish_step_5 - finish_step_4).to_i}"

      end
      sleep 15
    end
  end
end
