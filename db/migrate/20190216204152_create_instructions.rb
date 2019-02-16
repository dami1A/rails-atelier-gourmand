class CreateInstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :instructions do |t|
      t.integer :step
      t.text :description
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
