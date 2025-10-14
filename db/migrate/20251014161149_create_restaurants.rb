class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating
      t.string :address
      t.string :string
      t.integer :phone_number
      t.string :category

      t.timestamps
    end
  end
end
