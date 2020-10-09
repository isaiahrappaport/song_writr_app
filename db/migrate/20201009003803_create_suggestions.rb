class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.integer :user_id
      t.string :text
      t.integer :agree
      t.integer :song_id

      t.timestamps
    end
  end
end
