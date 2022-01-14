class CreateUserPatrimonies < ActiveRecord::Migration[6.1]
  def change
    create_table :user_patrimonies do |t|
      t.references :user, null: false, index: true
      t.references :stock, null: false, index: true
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
