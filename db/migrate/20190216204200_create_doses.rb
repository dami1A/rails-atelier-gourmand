class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.string :quantity
      t.references :ingredient, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
