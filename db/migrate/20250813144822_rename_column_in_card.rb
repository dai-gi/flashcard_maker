class RenameColumnInCard < ActiveRecord::Migration[7.2]
  def change
    rename_column :cards, :name, :question
  end
end
