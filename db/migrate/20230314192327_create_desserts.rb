class CreateDesserts < ActiveRecord::Migration[6.1]
  def change
    create_table :desserts do |t|
      t.text :flavor
      t.float :price
      t.integer :customer_id
    end
  end
end
