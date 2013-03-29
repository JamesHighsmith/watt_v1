require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Watt'" do
      visit '/static_pages/home'
      page.should have_content('Watt')
    end
  end
end