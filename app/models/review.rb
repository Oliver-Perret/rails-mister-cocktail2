class Review < ApplicationRecord
  belongs_to :cocktail
  belongs_to :user, foreign_key: "user_id"


  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
end
