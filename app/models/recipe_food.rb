# frozen_string_literal: true

class Recipe_food < ApplicationRecord
  belong_to :foods
  belong_to :recipes
end
