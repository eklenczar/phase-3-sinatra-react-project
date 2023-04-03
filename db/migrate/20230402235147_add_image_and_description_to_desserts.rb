class AddImageAndDescriptionToDesserts < ActiveRecord::Migration[6.1]
  def change
    add_column :desserts, :image, :string
    add_column :desserts, :description, :string
  end
end
