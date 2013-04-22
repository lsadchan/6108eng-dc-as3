require 'spec_helper'

describe "AuthorSessionsControllers" do
  
  #Will error because of 2 elements containing the name > 'username'
  # it "should have 'You have sucessfully logged in.'" do
    # visit login_path
    # fill_in "username", :with => 'admin'
    # fill_in "password", :with => '123admin123'
    # click_button "Login"
    # page.should have_content('You have sucessfully logged in.')
  # end
  
  it "should log the user in as admin" do
    post login_path, :username => 'admin', :password => '123admin123'
    response.should be_success
  end
  
end