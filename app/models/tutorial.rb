class Tutorial < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :lessons

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
