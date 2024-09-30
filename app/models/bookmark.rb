class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :category_id, uniqueness: { scope: :recipe_id }
  validates :comment, length: { minimum: 6 }
end
