class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games, id: :uuid do |t|
      t.string :type
      t.boolean :joinable

      t.timestamps
    end
  end
end