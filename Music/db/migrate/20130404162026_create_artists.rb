class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
			t.date :date_of_birth
			t.string :gender
			t.string :name

      t.timestamps
    end
  end
end
