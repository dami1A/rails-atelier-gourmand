class ChangeStepToBeStringInInstructions < ActiveRecord::Migration[5.2]
  def change
    change_column :instructions, :step, :string
  end
end
