class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :user
  belongs_to :building
  has_many :comments
end
