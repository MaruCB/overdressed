class Booking < ApplicationRecord
  belongs_to :user, foreign_key: true
  belongs_to :costumes, foreign_key: true

  validates :start_date, presence: true
  validates :end_date, presence: true
end
