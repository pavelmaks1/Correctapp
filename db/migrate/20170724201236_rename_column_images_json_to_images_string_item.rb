class RenameColumnImagesJsonToImagesStringItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :images
  end
end
