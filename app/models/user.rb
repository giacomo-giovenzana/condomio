class User < ApplicationRecord
  has_many :apartment_owners
  has_many :building_admins
  has_many :tickets
  has_many :tickets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
