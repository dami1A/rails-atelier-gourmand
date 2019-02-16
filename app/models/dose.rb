class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  validates :quantity, presence: true
  validates :ingredient_id, presence: true, null: false
  validates :recipe_id, presence: true, null: false
  validates :recipe_id, uniqueness: { scope: :ingredient_id,
    message: "Tu ne peux pas ajouter 2 fois le même ingredient dans une recette" }
end
