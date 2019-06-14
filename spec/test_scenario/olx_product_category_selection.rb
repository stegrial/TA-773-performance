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

         # User clicks on the animal Category to select category
         find(:xpath, "//span[@class='cat-icon cat-icon-circle cat-icon-35']").click

         # User clicks on free animal mating to select category
         find(:xpath, "//a[@data-id='1520']").click

         # User clicks on gallery view to change category

         find(:xpath, "//a[@class='topTabView link']").click

         Benchmark.bm(10) do |x|

           # User clicks oт the twelfth product from the list
           x.report('step 1:') { find(:xpath, "//ul[@class='gallerywide clr normal ']/li[12]").click }

           # User clicks a complaint for reporting
           x.report('step 2:') { find(:xpath, "//a[@id='reportMe']").click }

           # User select a cause of reporting
           x.report('step 3:') { find(:xpath, "//input[@id='reason-spam']").click }

           # User accept the complaint of reporting
           x.report('step 4:') { find(:xpath, "//input[@id='report-submit']").click }

         end
       end
       scenario 'Recording: OLX product category selection', ta: true do

           # User goes to the main page of the site
           visit 'https://www.olx.ua/'

           # User clicks on the animal Category to select category
           find(:xpath, ta('signature_updating:olx:main_page:animalCategory', "//span[@class='cat-icon cat-icon-circle cat-icon-35']")).click

           # User clicks on free animal mating to select category
           find(:xpath, ta('signature_updating:olx:main_page:free_animal_mating', "//a[@data-id='1520']")).click

           # User clicks on gallery view to change category
           find(:xpath, ta('signature_updating:olx:product_page:gallery_view', "//a[@class='topTabView link']")).click

           Benchmark.bm(10) do |x|

               p "-------------------------- Analizator -----------------------"
               # User clicks oт the twelfth product from the list
               x.report('step 1:') { find(:xpath, ta('signature_updating:olx:product_page:product', "//ul[@class='gallerywide clr normal ']/li[12]")).click }

               # User clicks a complaint for reporting
               x.report('step 2:') { find(:xpath, ta('signature_updating:olx:product_page:complaint', "//a[@id='reportMe']")).click }

               # User select a cause of reporting
               x.report('step 3:') { find(:xpath, ta('signature_updating:olx:product_page:cause', "//input[@id='reason-spam']")).click }

               # User accept the complaint of reporting
               x.report('step 4:') { find(:xpath, ta('signature_updating:olx:product_page:accept', "//input[@id='report-submit']")).click }

               sleep 3
           end
       end
       scenario 'Searching: OLX product category selection', ta: true do

          2.times do
            # User goes to the main page of the site
            visit 'https://www.olx.ua/zhivotnye/besplatno-zhivotnye-i-vyazka/?view=galleryWide'

            Benchmark.bm(10) do |x|

              p "-------------------------- Analizator -----------------------"
              # User clicks oт the twelfth product from the list
              x.report('step 1:') { find(:xpath, ta('signature_updating:olx:product_page:product', "//ul[@class='gallerywide clr normal ']/li[12]")).click }

              # User clicks a complaint for reporting
              x.report('step 2:') { find(:xpath, ta('signature_updating:olx:product_page:complaint', "//a[@id='reportMe']")).click }

              # User select a cause of reporting
              x.report('step 3:') { find(:xpath, ta('signature_updating:olx:product_page:cause', "//input[@id='reason-spam']")).click }

              # User accept the complaint of reporting
              x.report('step 4:') { find(:xpath, ta('signature_updating:olx:product_page:accept', "//input[@id='report-submit']")).click }

              sleep 3
            end
            sleep 5

          end
       end
    end
end
