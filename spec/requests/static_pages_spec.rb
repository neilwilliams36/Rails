require 'spec_helper'

describe "Static Pages" do
  describe "Home" do
    it "should have the content Sample" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample')
      expect(page).to have_content('This is the')
      expect(page).to have_title("Sample")
    end
  end

  describe "Help" do
    it "should have the content Help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_title("Sample")
    end
  end

  describe "About" do
    it "should have the content Help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      expect(page).to have_content('About')
      expect(page).to have_title("Sample")
    end
  end
end
