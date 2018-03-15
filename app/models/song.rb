class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(string)
    self.artist = Artist.find_or_create_by(name: string)
  end
end
