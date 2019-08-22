class Tutorial < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :lessons, dependent: :destroy

  validates :image_link, presence: true
  validates :video_link, presence: true

  include PgSearch::Model
  pg_search_scope :global_tutorial_search,
    against: [ :title, :description ],
    associated_against: {
      category: :name
    },
    using: {
      tsearch: { prefix: true }
    }

end
