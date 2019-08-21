class RemoveCategoryFromTutorials < ActiveRecord::Migration[5.2]
  def change
    remove_column :tutorials, :category
  end
end
