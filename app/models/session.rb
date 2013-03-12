class Session < ActiveRecord::Base
  attr_accessible :audience, :endtime, :sessioninfo, :starttime
end
