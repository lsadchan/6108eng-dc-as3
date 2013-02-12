class Tagging < ActiveRecord::Base
  belongs_to :racingteam
  belongs_to :tag
  attr_accessible :racingteam_id, :tag_id
end
