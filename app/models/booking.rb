class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :costume
  has_many :users, dependent: :destroy
  has_many :costumes, dependent: :destroy

  # validates :start_date, presence: true
  # validates :end_date, presence: true
end
