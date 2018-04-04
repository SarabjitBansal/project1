class FavoriteRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
  validates :recipe_id, :uniqueness => { :scope => :user_id }
end
