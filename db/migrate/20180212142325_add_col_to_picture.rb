class AddColToPicture < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :thumbnail, :string
  end
end
