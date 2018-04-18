class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :guid, primary_key: true
      t.string :type
      t.boolean :joinable

      t.timestamps
    end
  end
end
