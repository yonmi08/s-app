class CreateGraphs < ActiveRecord::Migration[5.0]
  def change
    create_table :graphs do |t|
      t.references :management, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
