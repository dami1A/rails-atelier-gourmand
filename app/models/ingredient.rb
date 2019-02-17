class Ingredient < ApplicationRecord
  has_many :doses

  default_scope { order(name: :asc) }

  def name=(value)
    write_attribute(:name, value.downcase)
  end

  validates :name, uniqueness: true, presence: true
end
