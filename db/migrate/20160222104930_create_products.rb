class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :image
      t.string :description
      t.string :brand

      t.timestamps null: false
    end
  end
end
