class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.integer :breakfast
      t.integer :lunch
      t.integer :dinner
      t.integer :snack

      t.timestamps
    end
  end
end
