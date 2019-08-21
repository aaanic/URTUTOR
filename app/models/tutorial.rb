class Tutorial < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :lessons
end
