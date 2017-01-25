class Product < ApplicationRecord
  belongs_to :client
  has_many :formulas




end
