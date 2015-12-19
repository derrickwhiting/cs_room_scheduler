class Day < ActiveRecord::Base
  has_many :meetings, dependent: :destroy


  def self.from_now
    where(['date >= ?', Date.today]).order(:date)
  end
end

# time = {1 => '12:00 a.m. - 1:00 a.m.', 
#   2 => '1:00 a.m. - 2:00 a.m.', 
#   3 => '2:00 a.m. - 3:00 a.m.', 
#   4 => '3:00 a.m. - 4:00 a.m.',
#   5 => '4:00 a.m. - 5:00 a.m.',
#   6 => '5:00 a.m. - 6:00 a.m.',
#   7 => '6:00 a.m. - 7:00 a.m.',
#   8 => '7:00 a.m. - 8:00 a.m.',
#   9 => '8:00 a.m. - 9:00 a.m.',
#   10 => '9:00 a.m. - 10:00 a.m.',
#   11 => '10:00 a.m. - 11:00 a.m.',
#   12 => '11:00 a.m. - 12:00 p.m.',
#   13 => '12:00 p.m. - 1:00 p.m.',
#   14 => '1:00 p.m. - 2:00 p.m.', 
#   15 => '2:00 p.m. - 3:00 p.m.', 
#   16 => '3:00 p.m. - 4:00 p.m.',
#   17 => '4:00 p.m. - 5:00 p.m.',
#   18 => '5:00 p.m. - 6:00 p.m.',
#   19 => '6:00 p.m. - 7:00 p.m.',
#   20 => '7:00 p.m. - 8:00 p.m.',
#   21 => '8:00 p.m. - 9:00 p.m.',
#   22 => '9:00 p.m. - 10:00 p.m.',
#   23 => '10:00 p.m. - 11:00 p.m.',
#   24 => '11:00 p.m. - 12:00 a.m.'}



# 365.times do |i|
#   day = Day.create(date: Date.today + i)
#   23.times do |j|
#     offset = 1 + j
#     Meeting.create(room: 3, day_id: day.id, display: time[offset], time: offset)
#   end
# end

