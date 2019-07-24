require 'spec_helper'
require 'benchmark'


feature 'TrueAutomation.IO capybara example' do

  scenario 'venus - Selenium capibara', selenium: true do
    visit 'https://venus.com/'
    Benchmark.bm(10) do |x|

      x.report('step 1:') { find(:xpath, "(//li[@class='menu-item left'])[1]").hover }

      x.report('step 2:') { find(:xpath, "(//li[@class='cat-title'])[1]").click }

      x.report('step 3:') { find(:xpath, "(//div[@class='product-container']/a)[1]").click }
    end
  end

  scenario 'venus - Picker ', ep_run: true do
    visit 'https://venus.com/'
    Benchmark.bm(10) do |x|

      x.report('step 1:') { find(ta('venus:757:clothing')).hover }

      x.report('step 2:') { find(ta('venus:757:dress')).click }

      x.report('step 3:') { find( ta('venus:757:firstdress')).click }
    end
  end
end