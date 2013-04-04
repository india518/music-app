class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
			t.string :title
			t.integer :band_id
			t.date :release_date

      t.timestamps
    end
  end
end
