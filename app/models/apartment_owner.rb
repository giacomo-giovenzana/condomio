class ApartmentOwner < ApplicationRecord
  belongs_to :user
  belongs_to :apartments
end
