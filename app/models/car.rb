class Car < ApplicationRecord
  belongs_to :category
  has_one_attached :image
  has_many :bookings
  has_many :pricing_rules

  def current_price
    today = Date.today
    price_rule = PricingRule.where('start_date <= ? AND end_date >= ?', today, today).first
    price_rule ? price_rule.price : price
  end
end
