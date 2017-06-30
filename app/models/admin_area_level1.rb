class AdminAreaLevel1 < ApplicationRecord
  belongs_to :country
  has_many :admin_area_level2s
end
