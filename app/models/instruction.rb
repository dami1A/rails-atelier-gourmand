class Instruction < ApplicationRecord
  belongs_to :recipe

  STEPS = %w(1 2 3 4 5 6 7 8 9 10)
  validates :description, presence: true
  validates :step,
            presence: true,
            inclusion: { in: STEPS, message: "tu dois choisir un numéro d'étape pour ton instruction" }
  validates :recipe_id, presence: true, null: false
  validates :recipe_id, uniqueness: { scope: :step,
    message: "Tu ne peux pas ajouter 2 fois le même numéro d'étape dans une recette" }
end
