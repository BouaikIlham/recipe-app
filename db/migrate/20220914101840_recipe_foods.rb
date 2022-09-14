# frozen_string_literal: true

class RecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table 'recioe_foods', force: :cascade do |t|
      t.integer :quantity
      t.integer :recipe_id
      t.integer :food_id
    end
  end
end
