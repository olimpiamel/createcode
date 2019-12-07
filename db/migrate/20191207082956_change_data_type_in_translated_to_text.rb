class ChangeDataTypeInTranslatedToText < ActiveRecord::Migration[5.2]
  def change
    change_column :croations, :translated, :text
  end
end
