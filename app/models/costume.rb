class Costume < ApplicationRecord
  CATEGORY = %w[Halloween Folk Christmas Party Fancy Carnival Animal Fantasy]
  belongs_to :user
  has_many :bookings

  # validates :price, :description, :size, :photo_url, presence: true
  # validates :name, presence: true, length: { minimum: 3 }
  # validates :category, presence: true, inclusion: { in: CATEGORY }
end
