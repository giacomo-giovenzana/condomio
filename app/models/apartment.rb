class Apartment < ApplicationRecord
  belongs_to :division
  has_many :apartment_owner
end
