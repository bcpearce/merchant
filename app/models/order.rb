class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  belongs_to :address
  belongs_to :user

  def total
    sum = 0
    self.order_items.each { |oi| sum += oi.subtotal }
    sum
  end
end
