class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.string :string
      t.integer :user_id

      t.timestamps
    end
    add_index :stocks, :user_id
  end
end
