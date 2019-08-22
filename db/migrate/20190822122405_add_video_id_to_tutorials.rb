class AddVideoIdToTutorials < ActiveRecord::Migration[5.2]
  def change
    add_column :tutorials, :video_id, :string
  end
end
