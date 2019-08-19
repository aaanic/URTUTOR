class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.references :user, foreign_key: true, index: true
      t.references :tutorial, foreign_key: true, index: true

      t.timestamps
    end
  end
end
