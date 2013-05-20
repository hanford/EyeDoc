class Availability < ActiveRecord::Base
  belongs_to :doctor
  attr_accessible :end, :start
end
