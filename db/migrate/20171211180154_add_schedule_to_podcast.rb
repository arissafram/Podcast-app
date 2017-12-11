class AddScheduleToPodcast < ActiveRecord::Migration[5.1]
  def change
    add_column :podcasts, :schedule, :string
  end
end
