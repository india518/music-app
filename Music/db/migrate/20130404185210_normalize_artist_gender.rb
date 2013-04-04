class NormalizeArtistGender < ActiveRecord::Migration

  def up
		remove_column :artists, :gender
		add_column :artists, :gender_id, :integer
		create_table :genders do |t|
			t.string :gender_name

			t.timestamps
		end
  end

	def down
		drop_table :genders
		remove_column :artists, :gender_id
		add_column :artists, :gender, :string

	end

end
