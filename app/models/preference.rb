class Preference < ActiveRecord::Base

	def self.default
		all.first || Preference.create({artist_sort_order: "ASC", song_sort_order: "ASC", allow_create_artists: false, allow_create_songs: false})
	end

end
