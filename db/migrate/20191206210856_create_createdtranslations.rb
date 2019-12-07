class CreateCreatedtranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :createdtranslations do |t|
      t.references :creator_id, foreign_key: true

      t.timestamps
    end
  end
end
