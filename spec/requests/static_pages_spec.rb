require 'spec_helper'

describe "Static pages" do
  describe "home page" do
    it "Should have the content 'Sample App' as an h1" do
    visit '/static_pages/home'
    page.should have_selector('h1', :text => "Sample App")
    end
    it "Should have the right title" do
    visit '/static_pages/home'
    page.should have_selector('title',
                              :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help Page" do
    it "Should have the content 'help'" do
    visit '/static_pages/help'
    page.should have_selector('h1', :text => "Help")
    end
    it "Should have the right title" do
    visit '/static_pages/help'
    page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  describe "About Page" do
    it "Should have content 'About Us'" do
    visit '/static_pages/about'
    page.should have_selector('h1', :text => "About")
    end
    it "Should have the right title, '...About Us'" do
    visit "/static_pages/about"
    page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end

