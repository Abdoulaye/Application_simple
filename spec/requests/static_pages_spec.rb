require 'spec_helper'

describe "Le controleur Static pages" do

  describe "La page d'accueil (Home page)" do

    it "doit avoir dans h1 'Simple Appllication'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Simple Application")
    end

    it "doit avoir le titre 'Accueil' ('Home')" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Tutoriel Ruby on Rails Simple Application | Accueil")
    end
  end

  describe "La page d'aide (Help page)" do

    it "doit avoir dans h1 'Aide'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Aide')
    end

     it "doit avoir le titre 'Aide' ('Help')" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Tutoriel Ruby on Rails Simple Application | Aide")
    end
  end
  
  describe "La page apropos de (About page)" do

    it "doit avoir dans h1 'Apropos de Nous'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'Apropos de Nous')
    end

     it "doit avoir le titre 'Apropos de Nous' ('Home')" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Tutoriel Ruby on Rails Simple Application | Apropos de Nous")
    end
  end
end

