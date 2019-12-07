class AddFieldsToCreators < ActiveRecord::Migration[5.2]
  def change
    add_column :creators, :name, :string
    add_column :creators, :alias, :string
  end
end
