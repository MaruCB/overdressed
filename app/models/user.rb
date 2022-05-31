class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :costumes

  # validates :first_name, :last_name, :email, presence: true
  # validates :email, presence: true, length: { minimum: 5 }
end
