class CreateCroations < ActiveRecord::Migration[5.2]
  def change
    create_table :croations do |t|
      t.string :title
      t.string :lang1
      t.text :totrans
      t.string :lang2
      t.string :translated

      t.timestamps
    end
  end
end
