class Order < ApplicationRecord
  validates :firstname, :lastname, presence: true
  validates :quantity, numericality: { only_integer: true, minimum: 1, maximum: 33 }
  validates :email, email: true
  validates :phone, phone: { types: [:mobile] }
end
