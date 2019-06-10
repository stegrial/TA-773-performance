
require 'spec_helper'
require 'date'

describe 'Preconditions' do

    feature 'TrueAutomation.IO capybara example' do
      scenario 'Recording: Facebook - adding and delete new post' do
      # User goes to the main page of the site facebook
          visit 'https://www.facebook.com'

          # User clicks on the email input for setting email
          find(:xpath, "//input[@id='email']").set('eshapovalov298@gmail.com')
          # User clicks on the pass input for setting pass
          find(:xpath, "//input[@id='pass']").set('Tester1234')
          # User clicks on the login button for entering into account
          find(:xpath,  "//label[@id='loginbutton']").click
          sleep 3
          # User clicks on the profile button
          find(:xpath, "//span[text()='Mark']").click
          # User clicks Create Post
          find(:xpath, "//span[text()='Create Post']").click
          # User entering text in modal
          find(:xpath, "//div[@data-testid='status-attachment-mentions-input']").set('New Post signature updating')
          # User clicks Share for sharing post
          find(:xpath, "//button[@data-testid='react-composer-post-button']").click
          expect(page).to have_selector(:xpath, "//p[text()='New Post signature updating']", visible: true)
          # User clicks option button of new post to see menu
          sleep 3
          find(:xpath, "(//a[@data-testid='post_chevron_button'])[1]").click
          # User clicks delete button to delete post
          sleep 3
          find(:xpath, "//a[@data-feed-option-name='FeedDeleteOption']").click
          sleep 3
          # User clicks delete button to accept deleting
          find(:xpath, "//button[text()='Delete']").click
          sleep 3
     end
  end
  feature 'TrueAutomation.IO capybara example' do
    scenario 'Searching: Facebook - adding and delete new post' do
    # User goes to the main page of the site facebook
    1.times do
        visit 'https://www.facebook.com'

        sleep 5
        start_step_1 = Time.now
        # User clicks on the email input for setting email
        find(:xpath, ta('signature_updating:FB:login', "//input[@id='email']")).set('eshapovalov298@gmail.com')
        finish_step_1 = Time.now
        puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

        sleep 3
        start_step_2 = Time.now
        # User clicks on the pass input for setting pass
        find(:xpath, ta('signature_updating:FB:pass', "//input[@id='pass']")).set('Tester1234')
        finish_step_2 = Time.now
        puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - start_step_2).to_i}"

        sleep 3
        start_step_3 = Time.now
        # User clicks on the login button for entering into account
        find(:xpath, ta('signature_updating:FB::enter', "//label[@id='loginbutton']")).click
        finish_step_3 = Time.now
        puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - start_step_3).to_i}"

        sleep 3
        start_step_4 = Time.now
        # User clicks on the profile button
        find(:xpath, ta('signature_updating:FB::gotoAccPage', "//span[text()='Mark']")).click
        finish_step_4 = Time.now
        puts time_step_4 = "time of step 4, seconds: #{(finish_step_4 - start_step_4).to_i}"
        expect(page).to have_selector(:xpath, "//img[@alt='your Profile Photo']", visible: true)

        sleep 3
        start_step_5 = Time.now
        # User clicks Create Post
        find(:xpath, ta('signature_updating:FB:addPost', "//span[text()='Create Post']")).click
        finish_step_5 = Time.now
        puts time_step_5 = "time of step 5, seconds: #{(finish_step_5 - start_step_5).to_i}"
        expect(page).to have_selector(:xpath, "//div[@data-testid='status-attachment-mentions-input']", visible: true)

        sleep 3
        start_step_6 = Time.now
        # User entering text in modal
        find(:xpath, ta('signature_updating:FB:setTextInProfile', "//div[@data-testid='status-attachment-mentions-input']")).set('New Post signature updating')
        finish_step_6 = Time.now
        puts time_step_6 = "time of step 6, seconds: #{(finish_step_6 - start_step_6).to_i}"

        sleep 3
        start_step_7 = Time.now
        # User clicks Share for sharing post
        find(:xpath, ta('signature_updating:FB:shareText', "//button[@data-testid='react-composer-post-button']")).click
        finish_step_7 = Time.now
        puts time_step_7 = "time of step 7, seconds: #{(finish_step_7 - start_step_7).to_i}"
        expect(page).to have_selector(:xpath, "//p[text()='New Post signature updating']", visible: true)

        sleep 5
        start_step_8 = Time.now
        # User clicks option button of new post to see menu
        find(:xpath, ta('signature_updating:FB:optionsBtn', "(//a[@data-testid='post_chevron_button'])[1]")).click
        finish_step_8 = Time.now
        puts time_step_8 = "time of step 8, seconds: #{(finish_step_8 - start_step_8).to_i}"

        sleep 3
        start_step_9 = Time.now
        # User clicks delete button to delete post
        find(:xpath, ta('signature_updating:FB:selectDeletePost', "//a[@data-feed-option-name='FeedDeleteOption']")).click
        finish_step_9 = Time.now
        puts time_step_9 = "time of step 9, seconds: #{(finish_step_9 - start_step_9).to_i}"

        sleep 3
        start_step_10 = Time.now
        # User clicks delete button to accept deleting
        find(:xpath, ta('signature_updating:FB:acceptDelete', "//button[text()='Delete']")).click
        finish_step_10 = Time.now
        puts time_step_10 = "time of step 10, seconds: #{(finish_step_10 - start_step_10).to_i}"

      end
      sleep 15
    end

  end
  feature 'TrueAutomation.IO capybara example' do
    scenario 'Repeat Searching: Facebook - adding and delete new post' do
    # User goes to the main page of the site facebook
    1.times do
        visit 'https://www.facebook.com'

        sleep 5
        start_step_1 = Time.now
        # User clicks on the email input for setting email
        find(:xpath, ta('signature_updating:FB:login', "//input[@id='email']")).set('eshapovalov298@gmail.com')
        finish_step_1 = Time.now
        puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

        sleep 3
        start_step_2 = Time.now
        # User clicks on the pass input for setting pass
        find(:xpath, ta('signature_updating:FB:pass', "//input[@id='pass']")).set('Tester1234')
        finish_step_2 = Time.now
        puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - start_step_2).to_i}"

        sleep 3
        start_step_3 = Time.now
        # User clicks on the login button for entering into account
        find(:xpath, ta('signature_updating:FB::enter', "//label[@id='loginbutton']")).click
        finish_step_3 = Time.now
        puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - start_step_3).to_i}"

        sleep 3
        start_step_4 = Time.now
        # User clicks on the profile button
        find(:xpath, ta('signature_updating:FB::gotoAccPage', "//span[text()='Mark']")).click
        finish_step_4 = Time.now
        puts time_step_4 = "time of step 4, seconds: #{(finish_step_4 - start_step_4).to_i}"
        expect(page).to have_selector(:xpath, "//img[@alt='your Profile Photo']", visible: true)

        sleep 3
        start_step_5 = Time.now
        # User clicks Create Post
        find(:xpath, ta('signature_updating:FB:addPost', "//span[text()='Create Post']")).click
        finish_step_5 = Time.now
        puts time_step_5 = "time of step 5, seconds: #{(finish_step_5 - start_step_5).to_i}"
        expect(page).to have_selector(:xpath, "//div[@data-testid='status-attachment-mentions-input']", visible: true)

        sleep 3
        start_step_6 = Time.now
        # User entering text in modal
        find(:xpath, ta('signature_updating:FB:setTextInProfile', "//div[@data-testid='status-attachment-mentions-input']")).set('New Post signature updating')
        finish_step_6 = Time.now
        puts time_step_6 = "time of step 6, seconds: #{(finish_step_6 - start_step_6).to_i}"

        sleep 3
        start_step_7 = Time.now
        # User clicks Share for sharing post
        find(:xpath, ta('signature_updating:FB:shareText', "//button[@data-testid='react-composer-post-button']")).click
        finish_step_7 = Time.now
        puts time_step_7 = "time of step 7, seconds: #{(finish_step_7 - start_step_7).to_i}"
        expect(page).to have_selector(:xpath, "//p[text()='New Post signature updating']", visible: true)

        sleep 5
        start_step_8 = Time.now
        # User clicks option button of new post to see menu
        find(:xpath, ta('signature_updating:FB:optionsBtn', "(//a[@data-testid='post_chevron_button'])[1]")).click
        finish_step_8 = Time.now
        puts time_step_8 = "time of step 8, seconds: #{(finish_step_8 - start_step_8).to_i}"

        sleep 3
        start_step_9 = Time.now
        # User clicks delete button to delete post
        find(:xpath, ta('signature_updating:FB:selectDeletePost', "//a[@data-feed-option-name='FeedDeleteOption']")).click
        finish_step_9 = Time.now
        puts time_step_9 = "time of step 9, seconds: #{(finish_step_9 - start_step_9).to_i}"

        sleep 3
        start_step_10 = Time.now
        # User clicks delete button to accept deleting
        find(:xpath, ta('signature_updating:FB:acceptDelete', "//button[text()='Delete']")).click
        finish_step_10 = Time.now
        puts time_step_10 = "time of step 10, seconds: #{(finish_step_10 - start_step_10).to_i}"

      end
      sleep 15
    end

  end

end
