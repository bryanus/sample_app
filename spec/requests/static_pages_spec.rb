require 'spec_helper'

describe "Static pages" do

  describe "Home page" do #the text between quotes is for human reading

    it "should have the content 'Home'" do #the text between quotes is for human reading
      visit '/static_pages/home' #this uses capybara to simulate a page load
      expect(page).to have_content('Home') #this is the actual test paramter
    end

    it "should have the base title" do
  		visit '/static_pages/home'
  		expect(page).to have_title('Ruby on Rails Tutorial')
  	end

    it "should NOT have a custom 'Home' title" do
    	visit '/static_pages/home'
    	expect(page).not_to  have_title('| Home')
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

  describe "Contact page" do
  	it "should have the word 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact')
  	end

  	it "should have the right title" do
  		visit '/static_pages/contact'
  		expect(page).to have_title('Contact')
  	end
  end



end