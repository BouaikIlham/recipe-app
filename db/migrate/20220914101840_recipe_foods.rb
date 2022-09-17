# frozen_string_literal: true

class RecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table 'recipe_foods', force: :cascade do |t|
      t.integer :quantity
    end
  end
end
