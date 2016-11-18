class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :body
      t.string :image_url
      t.string :thumbnail_url
      t.integer :min_players
      t.string :max_players
      t.integer :playing_time
      t.integer :category_id

      t.timestamps
    end
  end
end
