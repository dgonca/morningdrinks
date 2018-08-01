class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :drink_type
      t.string :coffee_type
      t.integer :sugar_level
      t.integer :milk_level
      
      t.timestamps
    end
  end
end
