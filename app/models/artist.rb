class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name
    self.artist.name
  end

  def artist_name=(string)
    self.artist = Artist.find_or_create_by(name: string)
  end
end
