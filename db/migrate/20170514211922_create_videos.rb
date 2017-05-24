class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.text :description
      t.string :url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
