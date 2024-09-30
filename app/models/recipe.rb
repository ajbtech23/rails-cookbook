class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :recipes, through: :bookmarks
end
