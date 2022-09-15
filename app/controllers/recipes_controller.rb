class RecipesController < ApplicationController

    def index
        @recipes = current_user.recipes
    end   

    def new
        @recipe = Recipe.new
    end
end
