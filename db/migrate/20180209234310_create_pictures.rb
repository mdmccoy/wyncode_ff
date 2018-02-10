class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :caption
      t.string :location
      t.integer :rating

      t.timestamps
    end
  end
end
