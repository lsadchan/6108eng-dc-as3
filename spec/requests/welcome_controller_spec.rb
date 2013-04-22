require 'spec_helper'

describe "WelcomeController" do
  describe "GET 'index'" do
    #Test controller
    it "should GET the 'index' view" do
      get '/welcome'
      response.status.should be(200)
    end
    
    #Test user request
    it "should GET 'index' view" do
      visit welcome_path
      page.should have_content("Home")
    end
  end
  
  describe "GET 'learntoski'" do
    #Test controller
    it "should GET the 'learntoski' view" do
      get '/welcome/learntoski'
      response.status.should be(200)
    end
    
    #Test user request
    it "should GET 'learntoski' view" do
      visit welcome_learntoski_path
      page.should have_content("Learn To Ski")
    end
  end
  
  describe "GET 'aboutus'" do
    #Test controller
    it "should GET the 'aboutus' view" do
      get '/welcome/aboutus'
      response.status.should be(200)
    end
    
    #Test user request
    it "should GET 'aboutus' view" do
      visit welcome_aboutus_path
      page.should have_content("About Us")
    end
  end
  
  describe "GET 'faqs'" do
    #Test controller
    it "should GET the 'faqs' view" do
      get '/welcome/faqs'
      response.status.should be(200)
    end
    
    #Test user request
    it "should GET 'faqs' view" do
      visit welcome_faqs_path
      page.should have_content("FAQs")
    end
  end
  
  describe "GET 'contactus'" do
    #Test controller
    it "should GET the 'contactus' view" do
      get '/welcome/contactus'
      response.status.should be(200)
    end
    
    #Test user request
    it "should GET 'contactus' view" do
      visit welcome_contactus_path
      page.should have_content("Contact Us")
    end
  end
  
  describe "GET 'gallery'" do
    #Test controller
    it "should GET the 'gallery' view" do
      get '/welcome/gallery'
      response.status.should be(200)
    end
    
    #Test user request
    it "should GET 'gallery' view" do
      visit welcome_gallery_path
      page.should have_content("Gallery")
    end
  end
end
