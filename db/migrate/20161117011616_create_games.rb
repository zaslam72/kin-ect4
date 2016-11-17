class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :body
      t.integer :num_players
      t.integer :category_id

      t.timestamps
    end
  end
end
