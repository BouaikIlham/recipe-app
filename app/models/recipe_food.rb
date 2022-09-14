class RecipeFood < ApplicationRecord
  belong_to :foods
  belong_to :recipes
end
