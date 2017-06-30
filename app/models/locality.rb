class Locality < ApplicationRecord
  belongs_to :admin_area_level2
  has_many :building
end
