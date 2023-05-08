class Car < ApplicationRecord
  belongs_to :category
  has_one_attached :image
  has_many :bookings
  has_many :pricing_rules

  def price_for_dates(start_date, end_date)
    pricing_rule = pricing_rules.where("start_date <= ? AND end_date >= ?", end_date, start_date).first
    if pricing_rule.present?
      self.price + pricing_rule.price
    else
      self.price
    end
  end
end
