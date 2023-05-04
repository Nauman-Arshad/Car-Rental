class CreditInfo < ApplicationRecord
  enum payment: { credit_card: 0, debit_card: 1, paypal: 2 }
end
