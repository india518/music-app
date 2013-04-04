class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
			t.integer :artist_id
			t.integer :band_id
			t.date :start_date
			t.date :end_date

      t.timestamps
    end
  end
end
