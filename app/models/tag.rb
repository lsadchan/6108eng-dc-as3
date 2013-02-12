class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :racingteams, through: :taggings
  attr_accessible :name
end
