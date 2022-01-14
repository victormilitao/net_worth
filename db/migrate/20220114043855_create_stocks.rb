class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :initials, null: false
      t.decimal :price

      t.timestamps
    end
  end
end
