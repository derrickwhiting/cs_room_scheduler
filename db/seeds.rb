# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

time = {1 => '12:00 a.m. - 1:00 a.m.', 
  2 => '1:00 a.m. - 2:00 a.m.', 
  3 => '2:00 a.m. - 3:00 a.m.', 
  4 => '3:00 a.m. - 4:00 a.m.',
  5 => '4:00 a.m. - 5:00 a.m.',
  6 => '5:00 a.m. - 6:00 a.m.',
  7 => '6:00 a.m. - 7:00 a.m.',
  8 => '7:00 a.m. - 8:00 a.m.',
  9 => '8:00 a.m. - 9:00 a.m.',
  10 => '9:00 a.m. - 10:00 a.m.',
  11 => '10:00 a.m. - 11:00 a.m.',
  12 => '11:00 a.m. - 12:00 p.m.',
  13 => '12:00 p.m. - 1:00 p.m.',
  14 => '1:00 p.m. - 2:00 p.m.', 
  15 => '2:00 p.m. - 3:00 p.m.', 
  16 => '3:00 p.m. - 4:00 p.m.',
  17 => '4:00 p.m. - 5:00 p.m.',
  18 => '5:00 p.m. - 6:00 p.m.',
  19 => '6:00 p.m. - 7:00 p.m.',
  20 => '7:00 p.m. - 8:00 p.m.',
  21 => '8:00 p.m. - 9:00 p.m.',
  22 => '9:00 p.m. - 10:00 p.m.',
  23 => '10:00 p.m. - 11:00 p.m.',
  24 => '11:00 p.m. - 12:00 a.m.'}


120.times do |i|
day = Day.create(date: Date.today + i)
end


Room.create(name:'Garage')
Room.create(name:'Northside')
Room.create(name:'Southside')
    

Day.all.each do |day|
Room.all.each do |room|
23.times do |j|
offset = 1 + j
Meeting.create(day_id: day.id, room_id: room.id, display: time[offset], time: offset)
end
end
end


