class KaraokeSinger < ActiveRecord::Base
has_many :performances
has_many :songs, through: :performances


# takes in an instance of a Song and creates a join between the KaraokeSinger instance an the Song instance
def sing instance

    # performance is self
    Performance.create(song_id: instance.id, karaoke_singer_id: self.id)
    
    #same thing as above but nicer - in 'self' context
    #self.performances.create(song_id: instance.id)


    # ran this to verify
# KaraokeSinger.first.sing(Song.find(2))
end

def buy_drink
    # self implied "number_of_drinks"
    self.update(number_of_drinks: number_of_drinks + 1)

    #self.number_of_drinks += 1
    #self.save
end

def songs_by_artist(artist_name)
    self.songs.where(artist_name: artist_name)
    # Ran this KaraokeSinger.find_by(id:1).songs_by_artist("Little Richard")
end

def drinks_tab price_per_drink
    # ran this to test KaraokeSinger.find_by(id:1).drinks_tab(50)
    self.number_of_drinks * price_per_drink
end

def self.total_tab price_per_drink
    #KaraokeSinger.all.sum(:number_of_drinks)
    #self.all.sum(:number_of_drinks)
    #all.sum(:number_of_drinks)
    sum(:number_of_drinks) * price_per_drink


    #longer more uncool ways to do it
    #KaraokeSinger.all.map{|singer| singer.number_of_drinks}.sum
    #KaraokeSinger.pluck(:number_of_drinks).sum
end

end
    