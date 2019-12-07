class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :alias
      t.string :email
      t.string :userid

      t.timestamps
    end
  end
end
