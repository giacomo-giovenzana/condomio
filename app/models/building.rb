class Building < ApplicationRecord
  belongs_to :address
  has_many :divisions
  has_many :building_admins
  accepts_nested_attributes_for :address
end
