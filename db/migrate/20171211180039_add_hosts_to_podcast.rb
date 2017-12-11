class AddHostsToPodcast < ActiveRecord::Migration[5.1]
  def change
    add_column :podcasts, :hosts, :string
  end
end
