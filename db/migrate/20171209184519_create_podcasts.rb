class CreatePodcasts < ActiveRecord::Migration[5.1]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :company
      t.text :description
      t.boolean :listened
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
