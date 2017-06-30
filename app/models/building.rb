class Building < ApplicationRecord
  belongs_to :locality
  has_many :division
  has_many :building_admin
end
