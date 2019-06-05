class Order < ApplicationRecord
  belongs_to :user
  belongs_to :baber
  belongs_to :pay_type
  belongs_to :arrival_type
  has_and_belongs_to_many :services
  has_and_belongs_to_many :products

  accepts_nested_attributes_for :services
  accepts_nested_attributes_for :products
end