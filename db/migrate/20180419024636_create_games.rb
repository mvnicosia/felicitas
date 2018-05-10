class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games, id: :uuid do |t|
      t.string :game_type, null: false
      t.boolean :joinable, null: false

      t.timestamps
    end
  end
end
