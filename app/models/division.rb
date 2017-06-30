class Division < ApplicationRecord
  belongs_to :building
  has_many :apartments
end
