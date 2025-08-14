class RenameDescriptionToAnswerInCard < ActiveRecord::Migration[7.2]
  def change
    rename_column :cards, :description, :answer
  end
end
