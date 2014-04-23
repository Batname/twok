require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Twok Company'" do
      visit '/static_pages/home'
      expect(page).to have_content('Twok Company')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'

      def have_title()
        ("TWOK - IMAGINATION IN DETAILS | Home")
      end
    end

  end
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'

      def have_title()
        ("TWOK - IMAGINATION IN DETAILS | Help")
      end
    end

  end
  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'

      def have_title()
        ("TWOK - IMAGINATION IN DETAILS | About")
      end
    end
  end
end