require 'spec_helper'

describe 'Users', :js => true do

  let!(:user) { FactoryGirl.create :user }
  context "homepage" do
    it "Signs up the homepage" do
      visit root_path
      click_on "Sign up"
      expect(page).to have_content
    end
  end

end