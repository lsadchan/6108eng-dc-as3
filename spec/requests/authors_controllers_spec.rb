require 'spec_helper'

describe "AuthorsControllers" do
  describe "Create author" do
    
    it "should create an author" do
      @author = {:username => 'George', :password => 'Galaxy', :email => 'galaxy@email.com'}
      post '/authors', @author
      response.should be_success
    end
    
  end
end
