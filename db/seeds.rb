puts "seeding"
KaraokeSinger.create(name:"Matt", number_of_drinks: 8)
KaraokeSinger.create(name:"Emma", number_of_drinks: 4)
KaraokeSinger.create(name:"Mikey", number_of_drinks: 7)

Song.create(title:"I slept with someone...", runtime_in_minutes: 3, artist_name: "fall out boy")
Song.create(title:"Lucielle", runtime_in_minutes: 2, artist_name: "Little Richard")
Song.create(title:"Happy", runtime_in_minutes: 2, artist_name: "Farrell")

Performance.create(song_id: Song.first.id, karaoke_singer_id: KaraokeSinger.last.id)
Performance.create(song_id: Song.last.id, karaoke_singer_id: KaraokeSinger.first.id)
puts "done seeding"