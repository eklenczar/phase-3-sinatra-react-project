class CreatePies < ActiveRecord::Migration[6.1]
  def change
    create_table :pies do |t|
      t.text :flavor
      t.float :price
      t.integer :order_id
    end
  end
end
