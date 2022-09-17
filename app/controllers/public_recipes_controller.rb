class PublicRecipesController < ApplicationController
    def index
      @public_recipes = Recipe.where(public: true).order(name: :desc)
    end
end