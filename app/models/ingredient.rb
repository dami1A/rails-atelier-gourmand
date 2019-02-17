class Ingredient < ApplicationRecord
  has_many :doses

  default_scope { order(name: :asc) }

  validates :name, uniqueness: true, presence: true
end
