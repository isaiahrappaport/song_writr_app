class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :audio_file
      t.string :lyrics
      t.string :privacy
      t.string :user_id

      t.timestamps
    end
  end
end
