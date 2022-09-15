# frozen_string_literal: true

class Recipes < ActiveRecord::Migration[7.0]
  def change
    create_table 'recipes', force: :cascade do |t|
      t.string :name
      t.string :preparation_time
      t.string :cooking_time
      t.text :description
      t.boolean :public
    end
  end
end
