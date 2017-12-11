class AddColumnToPodcast < ActiveRecord::Migration[5.1]
  def change
    add_column :podcasts, :image, :string
  end
end
