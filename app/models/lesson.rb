class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :tutorial
end
