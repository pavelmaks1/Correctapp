class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :images
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
