# frozen_string_literal: true

class Recipe < ApplicationRecord
  belong_to :user
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
end
