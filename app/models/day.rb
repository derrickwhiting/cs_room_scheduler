class Day < ActiveRecord::Base
  has_many :meetings, dependent: :destroy


  def self.from_now
    where(['date >= ?', Date.today]).order(:date)
  end
end

