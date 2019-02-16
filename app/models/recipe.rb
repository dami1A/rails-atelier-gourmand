class Recipe < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :instructions, dependent: :destroy

  CATEGORIES = %w(entremet tarte gateau glace crème accompagnement)
  validates :name, uniqueness: true, presence: true
  validates :prep_time, presence: true
  validates :cook_time, presence: true
  validates :portions, presence: true
  validates :category,
            presence: true,
            inclusion: { in: CATEGORIES, message: "tu dois choisir une des catégories" }
end
