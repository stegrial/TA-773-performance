require 'spec_helper'
require 'date'
require 'benchmark'

feature 'Testing the speed of Analyzer on the EC. Test with dropdown bar' do
  scenario 'Selenium', selenium: true do

    # User goes to the page
    visit 'https://ectest.trueautomation.io/flow'
    sleep 5

    Benchmark.bm(10) do |x|

      # User enters Username
      x.report('step 1:') { find(:xpath, "//input[@id='username']").set('admin') }

      # User enters Password
      x.report('step 2:') { find(:xpath, "//input[@id='password']").set('changeme') }

      # User clicks on the Login button
      x.report('step 3:') { find(:xpath, "//button[text()='Login']").click }

      # User clicks on the All Projects dropdown
      x.report('step 4:') { find(:css, 'div.project-select-popover').click }
      sleep 3

      # User chooses the Second project from the list
      x.report('step 5:') { find(:css, 'div.at-project-select-item-picker-2').click }

      # User chooses the Fifth project from the list
      x.report('step 6:') { find(:css, 'div.at-project-select-item-picker-5').click }

      # User presses the Apply button
      x.report('step 7:') { find(:css, 'div.at-project-select-submit').click }

      # User clicks on the All Projects dropdown
      x.report('step 8:') { find(:css, 'div.project-select-popover').click }
      sleep 3

      # User removes selection of the first project
      x.report('step 9:') { find(:css, '.at-project-select-item-picker-1.ec-project-select-picker__project--selected').click }

      # User removes selection of the second project
      x.report('step 10:') { find(:css, '.at-project-select-item-picker-2.ec-project-select-picker__project--selected').click }

      # User presses the Apply button
      x.report('step 11:') { find(:css, 'div.at-project-select-submit').click }

    end
    sleep 3
  end

  scenario 'Recording', ta_record: true do

    # User goes to the page
    visit 'https://ectest.trueautomation.io/flow'
    # sleep 3

    Benchmark.bm(10) do |x|

      # User enters Username
      x.report('step 1:') { find(:xpath, ta('ec:login', "//input[@id='username']")).set('admin') }
      # sleep 3

      # User enters Password
      x.report('step 2:') { find(:xpath, ta('ec:pass', "//input[@id='password']")).set('changeme') }
      # sleep 3

      # User clicks on the Login button
      x.report('step 3:') { find(:xpath, ta('ec:enter', "//button[text()='Login']")).click }
      # sleep 3

      # User clicks on the All Projects dropdown
      x.report('step 4:') { find(:css, ta('ec:all_projects_dropdown', 'div.project-select-popover')).click }
      sleep 3

      # User chooses the Second project from the list
      x.report('step 5:') { find(:css, ta('ec:second_project', 'div.at-project-select-item-picker-2')).click }
      # sleep 3

      # User chooses the Fifth project from the list
      x.report('step 6:') { find(:css, ta('ec:fifth_project', 'div.at-project-select-item-picker-5')).click }
      # sleep 3

      # User presses the Apply button
      x.report('step 7:') { find(:css, ta('ec:apply_btn', 'div.at-project-select-submit')).click }
      # sleep 3

      # User clicks on the All Projects dropdown
      x.report('step 8:') { find(:css, ta('ec:all_projects_dropdown', 'div.project-select-popover')).click }
      sleep 3

      # User removes selection of the first project
      x.report('step 9:') { find(:css, ta('ec:first_selected_project', '.at-project-select-item-picker-1.ec-project-select-picker__project--selected')).click }
      # sleep 3

      # User removes selection of the second project
      x.report('step 10:') { find(:css, ta('ec:second_selected_project', '.at-project-select-item-picker-2.ec-project-select-picker__project--selected')).click }
      # sleep 3

      # User presses the Apply button
      x.report('step 11:') { find(:css, ta('ec:apply_btn', 'div.at-project-select-submit')).click }

    end
    sleep 3
  end

  scenario 'Searching', ta_search: true do

    # User goes to the page
    visit 'https://ectest.trueautomation.io/flow'
    # sleep 3

    Benchmark.bm(10) do |x|

      # User enters Username
      x.report('step 1:') { find(:xpath, ta('ec:login', "//input[@id='username']")).set('admin') }
      # sleep 3

      # User enters Password
      x.report('step 2:') { find(:xpath, ta('ec:pass', "//input[@id='password']")).set('changeme') }
      # sleep 3

      # User clicks on the Login button
      x.report('step 3:') { find(:xpath, ta('ec:enter', "//button[text()='Login']")).click }
      # sleep 3

      # User clicks on the All Projects dropdown
      x.report('step 4:') { find(:css, ta('ec:all_projects_dropdown', 'div.project-select-popover')).click }
      sleep 3

      # User chooses the Second project from the list
      x.report('step 5:') { find(:css, ta('ec:second_project', 'div.at-project-select-item-picker-2')).click }
      # sleep 3

      # User chooses the Fifth project from the list
      x.report('step 6:') { find(:css, ta('ec:fifth_project', 'div.at-project-select-item-picker-5')).click }
      # sleep 3

      # User presses the Apply button
      x.report('step 7:') { find(:css, ta('ec:apply_btn', 'div.at-project-select-submit')).click }
      # sleep 3

      # User clicks on the All Projects dropdown
      x.report('step 8:') { find(:css, ta('ec:all_projects_dropdown', 'div.project-select-popover')).click }
      sleep 3

      # User removes selection of the first project
      x.report('step 9:') { find(:css, ta('ec:first_selected_project', '.at-project-select-item-picker-1.ec-project-select-picker__project--selected')).click }
      # sleep 3

      # User removes selection of the second project
      x.report('step 10:') { find(:css, ta('ec:second_selected_project', '.at-project-select-item-picker-2.ec-project-select-picker__project--selected')).click }
      # sleep 3

      # User presses the Apply button
      x.report('step 11:') { find(:css, ta('ec:apply_btn', 'div.at-project-select-submit')).click }

    end
    sleep 3
  end
end