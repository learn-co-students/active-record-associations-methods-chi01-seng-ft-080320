class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.all.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    all_artists = Genre.all.map do |finder|
      finder.artists.map(&:name)
    end
    all_artists.flatten
  end
end


 