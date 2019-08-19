class AddImageLinkToTutorials < ActiveRecord::Migration[5.2]
  def change
    add_column :tutorials, :image_link, :string
  end
end
