class Costume < ApplicationRecord
  CATEGORY = %w[Halloween Folk Christmas Party Fancy Carnival Animal Fantasy]
  SIZE = %w[XS(4) S(8) M(12) L(16) XL(20) XXL(22)]
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_size_and_category,
  against: [ :name, :size, :category ],
  using: {
    tsearch: { prefix: true }
  }

  # validates :price, :description, :size, :photo_url, presence: true
  # validates :name, presence: true, length: { minimum: 3 }
  # validates :category, presence: true, inclusion: { in: CATEGORY }
end
