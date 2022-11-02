class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    Artist.all.map(&:name)
    # self.artists.map {|artist| artist.name}
    # pluck selects one or more wanted attributes
    # self.artists.pluck(:name)
  end
end
