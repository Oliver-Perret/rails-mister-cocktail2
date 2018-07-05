class Cocktail < ApplicationRecord

  validates :name, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :ingredients, through: :doses
  belongs_to :user, foreign_key: "user_id"

  mount_uploader :photo, PhotoUploader
end
