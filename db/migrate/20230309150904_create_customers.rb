class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.text :name
      t.integer :phone
    end
  end
end
