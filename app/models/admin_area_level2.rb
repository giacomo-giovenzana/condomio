class AdminAreaLevel2 < ApplicationRecord
  belongs_to :admin_area_level1
  has_many :locality
end
