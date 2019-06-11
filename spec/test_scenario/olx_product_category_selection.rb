require 'spec_helper'
describe 'Preconditions' do
    after(:all) do
        Capybara.current_session.driver.quit
    end
    feature 'TrueAutomation.IO capybara example' do
        scenario 'OLX product category selection', selenium: true do
            # User goes to the main page of the site
            visit 'https://www.olx.ua/'

            sleep 5
            start_step_1 = Time.now

            # User clicks on the animal Category to select category
            find(:xpath, "//span[@class='cat-icon cat-icon-circle cat-icon-35']").click
            finish_step_1 = Time.now
            puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

            sleep 5
            start_step_2 = Time.now

            # User clicks on free animal mating to select category
            find(:xpath, "//a[@data-id='1520']").click
            finish_step_2 = Time.now
            puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - start_step_2).to_i}"

            sleep 5
            start_step_3 = Time.now
            # User clicks on gallery view to change category

            find(:xpath, "//a[@class='topTabView link']").click
            finish_step_3 = Time.now
            puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - start_step_3).to_i}"

            sleep 5
            start_step_4 = Time.now

            # User clicks oт the twelfth product from the list
            find(:xpath, "//ul[@class='gallerywide clr normal ']/li[12]").click
            finish_step_4 = Time.now
            puts time_step_4 = "time of step 4, seconds: #{(finish_step_4 - start_step_4).to_i}"

        end

        scenario 'Searching: OLX product category selection', speed: true do

            2.times do
            # User goes to the main page of the site
            visit 'https://www.olx.ua/'

            sleep 5
            start_step_1 = Time.now

            # User clicks on the animal Category to select category
            find(:xpath, ta('signature_updating:olx:main_page:animalCategory', "//span[@class='cat-icon cat-icon-circle cat-icon-35']")).click
            finish_step_1 = Time.now
            puts time_step_1 = "time of step 1, seconds: #{(finish_step_1 - start_step_1).to_i}"

            sleep 5
            start_step_2 = Time.now

            # User clicks on free animal mating to select category
            find(:xpath, ta('signature_updating:olx:main_page:free_animal_mating', "//a[@data-id='1520']")).click
            finish_step_2 = Time.now
            puts time_step_2 = "time of step 2, seconds: #{(finish_step_2 - start_step_2).to_i}"

            sleep 5
            start_step_3 = Time.now

            # User clicks on gallery view to change category
            find(:xpath, ta('signature_updating:olx:product_page:gallery_view', "//a[@class='topTabView link']")).click
            finish_step_3 = Time.now
            puts time_step_3 = "time of step 3, seconds: #{(finish_step_3 - start_step_3).to_i}"

            sleep 5
            start_step_4 = Time.now

            # User clicks oт the twelfth product from the list
            find(:xpath, ta('signature_updating:olx:product_page:product', "//ul[@class='gallerywide clr normal ']/li[12]")).click
            finish_step_4 = Time.now
            puts time_step_4 = "time of step 4, seconds: #{(finish_step_4 - start_step_4).to_i}"

            sleep 3
        end
        end
    end
end
