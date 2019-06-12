
require 'spec_helper'
require 'date'
require 'benchmark'

describe 'Preconditions' do
  after(:all) do
    Capybara.current_session.driver.quit
  end

    feature 'Testing the speed of Analyzer on the large DOM tree and testing the signature updating. Facebook - adding and delete new post' do
      scenario 'Selenium', selenium: true do
      # User goes to the main page of the site facebook
        visit 'https://www.facebook.com'

        Benchmark.bm(10) do |x|

        # User clicks on the email input for setting email
        x.report('step 1:') { find(:xpath, "//input[@id='email']").set('eshapovalov298@gmail.com')}
        sleep 5

        # User clicks on the pass input for setting pass
        x.report('step 2:') { find(:xpath, "//input[@id='pass']").set('Tester1234')}
        sleep 5

        # User clicks on the login button for entering into account
        x.report('step 3:') { find(:xpath,  "//label[@id='loginbutton']").click}
        puts 'test test'
        sleep 5

        # User clicks on the profile button
        x.report('step 4:') { find(:xpath, "//span[text()='Mark']").click }
        sleep 5

        # User clicks Create Post
        x.report('step 5:') { find(:xpath, "//span[text()='Create Post']").click }
        sleep 5

        # User entering text in modal
        x.report('step 6:') { find(:xpath, "//div[@data-testid='status-attachment-mentions-input']").set('New Post signature updating') }
        sleep 5

        # User clicks Share for sharing post
        x.report('step 7:') {find(:xpath, "//button[@data-testid='react-composer-post-button']").click }
        sleep 5

        expect(page).to have_selector(:xpath, "//p[text()='New Post signature updating']", visible: true)

        # User clicks option button of new post to see menu
        x.report('step 8:') {find(:xpath, "(//a[@data-testid='post_chevron_button'])[1]").click }
        sleep 5

        # User clicks delete button to delete post
        x.report('step 9:') {find(:xpath, "//a[@data-feed-option-name='FeedDeleteOption']").click }
        sleep 5

        # User clicks delete button to accept deleting
        x.report('step 10:') {find(:xpath, "//button[text()='Delete']").click }
        sleep 3

        # User clicks navigation  button to log out
        x.report('step 11:') { find(:xpath, "//div[@id='userNavigationLabel']").click }
        sleep 3

        # User clicks logout button
        x.report('step 12:') { find(:xpath, "//a//span[text()='Log Out']").click }
        end
      end
    end

    scenario 'Recording', ta: true do
    # User goes to the main page of the site facebook

      visit 'https://www.facebook.com'

      # User clicks on the email input for setting email
      find(:xpath, "//input[@id='email']").set('eshapovalov298@gmail.com')
      sleep 5

      # User clicks on the pass input for setting pass
      find(:xpath, "//input[@id='pass']").set('Tester1234')
      sleep 5

      # User clicks on the login button for entering into account
      find(:xpath,  "//label[@id='loginbutton']").click
      sleep 5

      # User clicks navigation  button to log out
      find(:xpath, "//div[@id='userNavigationLabel']").click
      sleep 5

      # User clicks logout button
      find(:xpath, "//a//span[text()='Log Out']").click


      Benchmark.bm(10) do |x|

        # User clicks on the email input for setting email
        x.report('step 1:') { find(:xpath, ta('signature_updating:FB:login', "//input[@id='email']")).set('eshapovalov298@gmail.com')}
        sleep 5

        # User clicks on the pass input for setting pass
        x.report('step 2:') { find(:xpath, ta('signature_updating:FB:pass', "//input[@id='pass']")).set('Tester1234')}
        sleep 5

        # User clicks on the login button for entering into account
        x.report('step 3:') { find(:xpath, ta('signature_updating:FB:enter', "//label[@id='loginbutton']")).click}
        puts 'test test'
        sleep 5

        # User clicks on the profile button
        x.report('step 4:') { find(:xpath, ta('signature_updating:FB::gotoAccPage', "//span[text()='Mark']")).click }
        sleep 5

        expect(page).to have_selector(:xpath, "//img[@alt='your Profile Photo']", visible: true)

        # User clicks Create Post
        x.report('step 5:') { find(:xpath, ta('signature_updating:FB:addPost', "//span[text()='Create Post']")).click }
        expect(page).to have_selector(:xpath, "//div[@data-testid='status-attachment-mentions-input']", visible: true)
        sleep 5

        # User entering text in modal
        x.report('step 6:') { find(:xpath, ta('signature_updating:FB:setTextInProfile', "//div[@data-testid='status-attachment-mentions-input']")).set('New Post signature updating') }
        sleep 5

        # User clicks Share for sharing post
        x.report('step 7:') { find(:xpath, ta('signature_updating:FB:shareText', "//button[@data-testid='react-composer-post-button']")).click }
        expect(page).to have_selector(:xpath, "//p[text()='New Post signature updating']", visible: true)
        sleep 5

        # User clicks option button of new post to see menu
        x.report('step 8:') { find(:xpath, ta('signature_updating:FB:optionsBtn', "(//a[@data-testid='post_chevron_button'])[1]")).click }
        sleep 5

        # User clicks delete button to delete post
        x.report('step 9:') { find(:xpath, ta('signature_updating:FB:selectDeletePost', "//a[@data-feed-option-name='FeedDeleteOption']")).click }
        sleep 5

        # User clicks delete button to accept deleting
        x.report('step 10:') { find(:xpath, ta('signature_updating:FB:acceptDelete', "//button[text()='Delete']")).click }
        sleep 5

        # User clicks navigation  button to log out
        x.report('step 11:') { find(:xpath, ta('signature_updating:FB:navigationLabel', "//div[@id='userNavigationLabel']")).click }
        sleep 5

        # User clicks logout button
        x.report('step 12:') { find(:xpath, ta('signature_updating:FB:logout', "//a//span[text()='Log Out']")).click }
      end
      sleep 3
    end

    scenario 'Searching', ta: true do
      # User goes to the main page of the site facebook

        2.times do
          visit 'https://www.facebook.com'
          Benchmark.bm(10) do |x|
          # User clicks on the email input for setting email
          x.report('step 1:') { find(:xpath, ta('signature_updating:FB:login', "//input[@id='email']")).set('eshapovalov298@gmail.com') }
          sleep 5

          # User clicks on the pass input for setting pass
          x.report('step 2:') { find(:xpath, ta('signature_updating:FB:pass', "//input[@id='pass']")).set('Tester1234')}
          sleep 5

          p "-------------------------- Analizator -----------------------"
          # User clicks on the login button for entering into account
          x.report('step 3:') { find(:xpath, ta('signature_updating:FB:enter', "//label[@id='loginbutton']")).click}
          sleep 5

          # User clicks on the profile button
          x.report('step 4:') { find(:xpath, ta('signature_updating:FB::gotoAccPage', "//span[text()='Mark']")).click }
          sleep 5

          expect(page).to have_selector(:xpath, "//img[@alt='your Profile Photo']", visible: true)

          # User clicks Create Post
          x.report('step 5:') { find(:xpath, ta('signature_updating:FB:addPost', "//span[text()='Create Post']")).click }
          expect(page).to have_selector(:xpath, "//div[@data-testid='status-attachment-mentions-input']", visible: true)
          sleep 5

          # User entering text in modal
          x.report('step 6:') { find(:xpath, ta('signature_updating:FB:setTextInProfile', "//div[@data-testid='status-attachment-mentions-input']")).set('New Post signature updating') }
          sleep 5

          # User clicks Share for sharing post
          x.report('step 7:') { find(:xpath, ta('signature_updating:FB:shareText', "//button[@data-testid='react-composer-post-button']")).click }
          expect(page).to have_selector(:xpath, "//p[text()='New Post signature updating']", visible: true)
          sleep 5

          # User clicks option button of new post to see menu
          x.report('step 8:') { find(:xpath, ta('signature_updating:FB:optionsBtn', "(//a[@data-testid='post_chevron_button'])[1]")).click }
          sleep 5

          # User clicks delete button to delete post
          x.report('step 9:') { find(:xpath, ta('signature_updating:FB:selectDeletePost', "//a[@data-feed-option-name='FeedDeleteOption']")).click }
          sleep 5
          p "-------------------------- Analizator -----------------------"
          # User clicks delete button to accept deleting
          x.report('step 10:') { find(:xpath, ta('signature_updating:FB:acceptDelete', "//button[text()='Delete']")).click }
          sleep 7

          # User clicks navigation  button to log out
          x.report('step 11:') { find(:xpath, ta('signature_updating:FB:navigationLabel', "//div[@id='userNavigationLabel']")).click }
          sleep 5

          p "-------------------------- Analizator -----------------------"
          # User clicks logout button
          x.report('step 12:') { find(:xpath, ta('signature_updating:FB:logout', "//a//span[text()='Log Out']")).click }
          end
          Capybara.current_session.driver.quit
        end
      sleep 5
    end
end
