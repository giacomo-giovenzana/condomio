class User < ApplicationRecord
  has_many :apartment_owner
  has_many :building_admin
  has_many :ticket
  has_many :ticket
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
