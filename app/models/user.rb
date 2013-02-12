class User < ActiveRecord::Base
  attr_accessible :city, :county, :email, :firstname, :lastname, :mobile, :password, :postcode, :street, :username
end
