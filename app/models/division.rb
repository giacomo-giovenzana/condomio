class Division < ApplicationRecord
  belongs_to :building
  has_many :apartment
end
