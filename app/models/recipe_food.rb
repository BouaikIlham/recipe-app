class Recipe_food < ApplicationRecord
    belong_to :foods
    belong_to :recipes
end