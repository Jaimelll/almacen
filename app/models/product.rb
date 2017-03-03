class Product < ApplicationRecord
  belongs_to :client
  has_many :formulas
    belongs_to :user

  accepts_nested_attributes_for :formulas



end
