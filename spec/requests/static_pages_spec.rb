require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do #the text between quotes is for human reading
    before { visit root_path }

    it { should have_content('Home') }
    it { should have_title(full_title('')) } #pulls full_title helper method from /spec/support/utilities.rb 
    it { should_not have_title('| Home') }

  end

  describe "Help page" do
    before { visit help_path }
  	
    it { should have_content('Help') }
  	it { should have_title(full_title('Help')) }

  end

  describe "About page" do
  	before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About')) }

  end

  describe "Contact page" do
  	before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }

  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end


end