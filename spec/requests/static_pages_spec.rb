require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'GenDec'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('GenDec')
    end
    
    it "should have the h1 tag GenDec Dashboard" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'GenDec Dashboard')
    end
    
    it "should have the base title" do
        visit '/static_pages/home'
        page.should have_selector('title',
                          :text => "GenDec")
    end

    it "should not have a custom page title" do
        visit '/static_pages/home'
        page.should_not have_selector('title', :text => '| Dashboard')
    end
  end
  
  describe "Help page" do
    it "should have the content 'GenDec'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_content('GenDec')
    end
    
    it "should have the h1 tag GenDec Dashboard" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'GenDec Help Page')
    end
    
    it "should have the base title" do
        visit '/static_pages/help'
        page.should have_selector('title',
                          :text => "GenDec")
    end

    it "should not have a custom page title" do
        visit '/static_pages/help'
        page.should_not have_selector('title', :text => '| Dashboard')
    end
  end
  
end
