class CreateStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :stocks do |t|
      t.string :title, null: false
      t.text :explanation, null: false
      t.integer :category_id, null: false
      t.integer :price, null: false
      t.integer :piece, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
