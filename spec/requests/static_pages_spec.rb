require 'spec_helper'

describe "Static pages" do

  describe "Home page" do #the text between quotes is for human reading

    it "should have the content 'Sample App'" do #the text between quotes is for human reading
      visit '/static_pages/home' #this uses capybara to simulate a page load
      expect(page).to have_content('Sample App') #this is the actual test paramter
    end

    it "should have the right title" do
  		visit '/static_pages/home'
  		expect(page).to have_title('Home')
  	end
  end

  describe "Help page" do

  	it "should have the word 'Help' in it" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "should have the right title" do
  		visit '/static_pages/help'
  		expect(page).to have_title('Help')
  	end
  end

  describe "About page" do
  	it "should have the word 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end

  	it "should have the right title" do
  		visit '/static_pages/about'
  		expect(page).to have_title('About')
  	end
  end



end