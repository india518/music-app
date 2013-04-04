class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
			t.string :title
			t.integer :writer_id

      t.timestamps
    end
  end
end
