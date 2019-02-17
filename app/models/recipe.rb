class Recipe < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :instructions, dependent: :destroy

  default_scope { order(name: :asc) }

  def name=(value)
    write_attribute(:name, value.downcase)
  end

  mount_uploader :photo, PhotoUploader

  CATEGORIES = %w(accompagnement crème entremet gateau glace tarte)
  validates :name, uniqueness: true, presence: true
  validates :prep_time, presence: true
  validates :cook_time, presence: true
  validates :portions, presence: true
  validates :category,
            presence: true,
            inclusion: { in: CATEGORIES, message: "tu dois choisir une des catégories" }
end
