# frozen_string_literal: true

class Foods < ActiveRecord::Migration[7.0]
  def change
    create_table 'foods', force: :cascade do |t|
      t.string :name
      t.string :measurement_unit
      t.integer :price
      t.integer :quantity
      t.timestamps
    end
  end
end
