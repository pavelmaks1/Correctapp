class RemoveImageColumnFromItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :image
  end
end
