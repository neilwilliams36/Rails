require 'spec_helper'

describe "Static Pages" do
  describe "Home" do
    before {visit root_path}
   it "should have the correct home page" do
     expect(page).to have_content('Sample')
     expect(page).to have_title('Sample')
     expect(page).to_not have_title('| Home')
   end
    end
  end

  describe "Help" do
    it "should have the content Help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      expect(page).to have_content('Help')
      expect(page).to have_title("Sample")
    end
  end

  describe "About" do
    it "should have the content Help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      expect(page).to have_content('About')
      expect(page).to have_title("Sample")
    end
  end

  describe "Contact" do
    it "should have the content Contact" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit contact_path
      expect(page).to have_content('Contact')
      expect(page).to have_title("Sample")
    end
end

