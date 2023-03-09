class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.date :date_ordered
      t.date :pick_up_date
      t.integer :customer_id
    end
  end
end
