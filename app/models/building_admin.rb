class BuildingAdmin < ApplicationRecord
  belongs_to :user
  belongs_to :building
end
