class User < ApplicationRecord
  has_many :tutorials
  has_many :lessons

  validates :username, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def bought_tutorials
    bought = []
    Lesson.all.each do |l|
      bought << l.tutorial if l.user == self
    end
    return bought
  end
end
