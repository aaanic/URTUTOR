class CreateTutorials < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :video_link
      t.string :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
