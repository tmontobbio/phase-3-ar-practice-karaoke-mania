class Song < ActiveRecord::Base
has_many :performances
has_many :karaoke_singers, through: :performances

  def self.find_by_artist artist_name
    self.find_by(artist_name: artist_name)
  end

  def number_of_times_sung karaoke_singer
    self.performances.where(karaoke_singer_id: karaoke_singer.id).count
    # This also works
    #Performance.where(karaoke_singer_id: karaoke_singer_id, song_id: self.id)
  end
end
