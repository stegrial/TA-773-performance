require 'spec_helper'
require 'benchmark'

describe 'Preconditions' do
    after(:all) do
        Capybara.current_session.driver.quit
    end
    feature 'TrueAutomation.IO capybara example' do
       scenario 'OLX product category selection', selenium: true do
         # User goes to the main page of the site
         visit 'https://www.olx.ua/'

         Benchmark.bm(10) do |x|
           # User clicks on the animal Category to select category
           x.report('step 1:') { find(:xpath, "//span[@class='cat-icon cat-icon-circle cat-icon-35']").click }

           # User clicks on free animal mating to select category
           x.report('step 2:') { find(:xpath, "//a[@data-id='1520']").click }

           # User clicks on gallery view to change category

           x.report('step 3:') { find(:xpath, "//a[@class='topTabView link']").click }

           # User clicks oт the twelfth product from the list
           x.report('step 4:') { find(:xpath, "//ul[@class='gallerywide clr normal ']/li[12]").click }

         end
       end
       scenario 'Recording: OLX product category selection', ta: true do

           # User goes to the main page of the site
           visit 'https://www.olx.ua/'

           Benchmark.bm(10) do |x|

               # User clicks on the animal Category to select category
               x.report('step 1:') { find(:xpath, ta('signature_updating:olx:main_page:animalCategory', "//span[@class='cat-icon cat-icon-circle cat-icon-35']")).click }


               # User clicks on free animal mating to select category
               x.report('step 2:') { find(:xpath, ta('signature_updating:olx:main_page:free_animal_mating', "//a[@data-id='1520']")).click }

               # User clicks on gallery view to change category
               x.report('step 3:') { find(:xpath, ta('signature_updating:olx:product_page:gallery_view', "//a[@class='topTabView link']")).click }

               p "-------------------------- Analizator -----------------------"
               # User clicks oт the twelfth product from the list
               x.report('step 4:') { find(:xpath, ta('signature_updating:olx:product_page:product', "//ul[@class='gallerywide clr normal ']/li[12]")).click }
               p "-------------------------- Analizator -----------------------"

               sleep 3
           end
       end
       scenario 'Searching: OLX product category selection', ta: true do

          2.times do
            # User goes to the main page of the site
            visit 'https://www.olx.ua/'

            Benchmark.bm(10) do |x|

              # User clicks on the animal Category to select category
              x.report('step 1:') { find(:xpath, ta('signature_updating:olx:main_page:animalCategory', "//span[@class='cat-icon cat-icon-circle cat-icon-35']")).click }
              sleep 3

              # User clicks on free animal mating to select category
              x.report('step 2:') { find(:xpath, ta('signature_updating:olx:main_page:free_animal_mating', "//a[@data-id='1520']")).click }
              sleep 3

              # User clicks on gallery view to change category
              x.report('step 3:') { find(:xpath, ta('signature_updating:olx:product_page:gallery_view', "//a[@class='topTabView link']")).click }
              sleep 5

              p "-------------------------- Analizator -----------------------"
              # User clicks oт the twelfth product from the list
              x.report('step 4:') { find(:xpath, ta('signature_updating:olx:product_page:product', "//ul[@class='gallerywide clr normal ']/li[12]")).click }
              p "-------------------------- Analizator -----------------------"

              sleep 3
            end
            sleep 5

            Capybara.current_session.driver.quit

          end
       end
    end
end
