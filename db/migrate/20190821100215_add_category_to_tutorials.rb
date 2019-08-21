class AddCategoryToTutorials < ActiveRecord::Migration[5.2]
  def change
    add_reference :tutorials, :category, foreign_key: true, index: true
  end
end
