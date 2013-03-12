class Author < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  validates_confirmation_of :password,
  message: "The passwords you have entered do not match.",
  if: :password
end
