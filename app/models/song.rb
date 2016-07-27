class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  validates :title, presence: :true

  def song_artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def song_artist_name
    self.artist
  end


end

