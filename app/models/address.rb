class Address < ActiveRecord::Base
  belongs_to :user
  has_many :orders

  validates :line1, presence:true
  validates :city, presence:true
  validates :zip, format: { with:/\d{5}/ }, presence:true
  validates :state, format: { with:/[A-Z]{2}/ }, presence:true

  def to_s
    arr = []
    arr << self.line1
    arr << self.line2
    arr << self.city
    arr << self.state
    arr << self.zip
    arr.compact.join(", ")
  end

end
