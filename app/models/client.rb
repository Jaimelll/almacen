class Client < ApplicationRecord
   validates :ruc, presence: true, length: {minimum: 1},uniqueness: true
  validates :razon, presence: true, length: {minimum: 1},uniqueness: true
end
