class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    respond_to do |format|
      format.html do
        if @recipe.save
          redirect_to recipes_path, notice: 'Recipe created successfully'
        else
          redirect_to new_recipe_path, alert: 'Error, Recipe not created!'
        end
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html do
        if @recipe.destroy
          redirect_to recipes_path, notice: 'Recipe deleted successfully'
        else
          redirect_to recipes_path, alert: 'Error, Recipe not deleted!'
        end
      end
    end
  end
end
