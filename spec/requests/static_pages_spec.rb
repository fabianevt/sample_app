require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do  
    before {visit '/static_pages/home'}
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
       page.should have_content('Sample App')
    end

    it "should have the h1 'Sample App'" do
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the title Ruby on Rails Tutorial Sample App" do
      page.should have_selector('title', text: full_title(''))
    end
    
    # it "should have the title 'Home'" do
    #       visit '/static_pages/home'
    #       page.should have_selector('html head title', :text => 'Home')
    #     end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => '| Home')
    end
  end
  
  describe "Help page" do
    before {visit '/static_pages/help'}
    it "should have the content 'Help'" do
      page.should have_content('Help')
    end
    
    it "should have the h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | Help")
    end
    
  end
  
  describe "About page" do
    before {visit '/static_pages/about'}
    it "should have the content 'About Us'" do
      page.should have_content('About Us')
    end

    it "should have the h1 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About Us'" do
      page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
