class Meeting < ActiveRecord::Base
  belongs_to :room
  belongs_to :day
end
