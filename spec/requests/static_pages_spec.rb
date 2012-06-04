require 'spec_helper'

describe "StaticPages" do
  subject { page }
  
  describe "Home page" do
    before { visit root_path } 
    
       it { should have_selector('h1', text: 'GenDec Dashboard') }
       it { should have_selector 'title',
                           text: "Dashboard" }
      
    end
  
  describe "Help page" do
    before { visit help_path }
      it { should have_selector('h1', text: 'GenDec Help Page') }
      it { should have_selector 'title',
                           text: "Help" }
    
  end
  
  describe "Contact page" do
    before { visit contact_path }
    
      it { should have_selector('h1', text: 'GenDec Contact') }
      it { should have_selector 'title',
                           text: "Contact" }
    
  end
  
end
