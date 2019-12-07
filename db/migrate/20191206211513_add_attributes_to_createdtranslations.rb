class AddAttributesToCreatedtranslations < ActiveRecord::Migration[5.2]
  def change
    add_column :createdtranslations, :title, :string
    add_column :createdtranslations, :totranslate, :string
    add_column :createdtranslations, :translated, :string
    add_column :createdtranslations, :language1, :string
    add_column :createdtranslations, :language2, :string
  end
end
