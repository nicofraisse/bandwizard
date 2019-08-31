# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },{ name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "************* B E G I N *************"

# USER SEED
users = [
  ["bob@gmail.com", "bob", "Bobby Lee"],
  ["joe@gmail.com", "joe", "Joe Jackson"],
  ["luc@gmail.com", "luc", "Luc M"],
  ["nacera@gmail.com", "nacera", "Nacera H"],
  ["nicolas@gmail.com", "nicolas", "Nicolas F"],
  ["simon@gmail.com", "simon", "Simon R"],
  ["esther@gmail.com", "esther", "Esther Dufour"],
  ["paul@gmail.com", "paulo", "Paul Bernard"],
  ["jennifer@gmail.com", "jennifer", "Jennifer Smith"]
]
password = "123123"
genders = ["Male", "Female"]
ages = [14..99]
user_addresses = ["3555 Edouard-Montpetit Montréal", "2630 St Germain Street Montreal QC H1W 2V3", "800 Rue Gagne Lasalle QC H8P 3W3", "3708 Rue St Hubert Montreal QC H2L 4A2", "7766 George Street Lasalle", "251 Av Percival Montreal", "7503 Rue St Denis Montreal", "5139 avenue Casgrain, Montréal, Canada", "5350 avenue Decelles, Montréal, Canada"]
user_photos = ["https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Frankie_%28musician%29_2016.jpg/1200px-Frankie_%28musician%29_2016.jpg", "https://overblown.co.uk/wp-content/uploads/2019/02/Musician-Resume.jpg", "https://media.npr.org/assets/img/2018/11/01/hellojunebyjoshsaul-2e187ce8b2e0a894a03e21d768fd03112727967d-s800-c85.jpg"]
user_personal_websites = ["https://www.nihttps://www.youtube.com/watch?v=BB0DU4DoPP4"]
user_youtube_links = ["https://www.youtube.com/watch?v=Jpw5Y2DMai4"]

user_soundcloud_links = ["https://soundcloud.com/rojasonthebeat/look-at-me-ft-xxxtentacion"]
user_bios = ["Extreme communicator. Problem solver. Avid travel expert. Food specialist. Unapologetic coffee guru.", "Incurable tv evangelist. Alcohol aficionado. Food fan. Social mediaholic. Twitter maven.", "Hardcore alcohol evangelist. Beer buff. Social media fanatic. Troublemaker. Explorer.", "Unapologetic social media lover. Twitter fanatic. Web fan. Tv ninja. Music guru. Baconaholic.", "Gamer. Unable to type with boxing gloves on. Social media lover. Extreme music fan. Passionate troublemaker.", "Travel practitioner. Web fanatic. Problem solver. Reader. General explorer. Music junkie. Twitter aficionado."]
user_bool = [true, true, false]

# STYLE SEED
styles = ["Blues", "Country", "Electronic", "Flamenco", "Folk", "Hip Hop", "Jazz", "Latin", "Pop", "R&B", "Soul", "Rock", "Heavy Metal", "Punk"]

# INSTRUMENT SEED
instruments = ["Guitar", "Bass", "Drums", "Vocals", "Synthesizer", "Saxophone", "Violin"]

# BAND SEED
band_name = ["Fateful Local", "Alternate Generation", "Slink Over Acrobat", "Creamy Escort", "Seemingly Yoke Of The Mellow Poetry", "Nickelback", "Nautical Barracuda", "Needy Balboa", "Favored Photograph", "Reverent Banter", "Repressed Wickedly", "Taylor Swift", "Either Cool", "Cool Powder", "Higher Archy", "Spasmodicum", "Wig Week", "Capricult", "Dr. Lov", "Miss Thought", "Dirty Little Secretion"]
band_bios = ["Communicator. Typical beer trailblazer. Web buff. Professional coffee fanatic. Bacon aficionado.", "Gamer. Incurable twitter junkie. Hardcore analyst. Freelance coffee advocate. Evil pop culture aficionado. Tv guru. Proud student.", "Tv geek. Award-winning travel scholar. Music lover. Student. Coffee junkie. Freelance communicator.", "Typical pop cultureaholic. Music fanatic. Social media buff. Hipster-friendly food scholar. Total gamer. Beer expert.", "Travel enthusiast. Thinker. Total pop culture guru. Infuriatingly humble explorer. Avid bacon geek.", "Bacon nerd. Typical tv fanatic. General twitter evangelist. Beer buff. Lifelong problem solver." ]
band_addresses = ["3920 René-Lévesque Blvd, Montréal, Canada", "4298  Derry Rd, Malton, Canada", "4470  Pine Street, Coronation, Alberta, Canada", "4421  Weir Crescent, Toronto, Ontario", "11688 Bd St Germain Montreal", "154 Av Ballantyne N Montréal-Ouest", "4205 Bourret Montréal QC H3S 1X1", "459 Rue St Paul E Montreal QC H2Y 1H5", "10270 Meilleur Street Montreal", "9167 Bd Gouin O Montreal QC H4K 2E2"]
band_personal_websites = ["http://www.shakaponk.com/"]
band_youtube_links = ["https://www.youtube.com/watch?v=Jpw5Y2DMai4"]
band_soundcloud_links = ["https://soundcloud.com/john-talabot/sets/music-for-days-like-these-nts"]
band_bools = [true, true, true, false]

# MISC SEED
experiences = ["Beginner", "Intermediate", "Advanced"]
favorite_artists = ["Radiohead", "Rolling Stones", "Ariana Grande", "The Beatles", "Nickel Back", "Mozart", "LMFAO", "Lil Wayne", "Lil Peep", "Lil Xan", "Lil Pump", "Lil Baby"]


# Delete all records
puts "Deleting previous records..."
FavoriteArtistUser.delete_all
FavoriteBandArtist.delete_all
FavoriteArtist.delete_all
NeededInstrument.delete_all
StyleBand.delete_all
StyleUser.delete_all
InstrumentUser.delete_all
Style.delete_all
Instrument.delete_all
Message.delete_all
Conversation.delete_all
Band.delete_all
User.delete_all

# Create users
puts "Creating users..."
all_users = []
users.each do |user|
  all_users << User.create!(
    email: user[0],
    username: user[1],
    full_name: user[2],
    password: password,
    gender: genders.sample,
    age: ages.sample,
    address: user_addresses.sample,
    photo: user_photos.sample,
    personal_website: user_personal_websites.sample,
    youtube_link: user_youtube_links.sample,
    soundcloud_link: user_soundcloud_links.sample,
    bio: user_bios.sample,
    is_live: user_bool.sample,
    is_recording: user_bool.sample,
    is_jamming: user_bool.sample,
    is_composition: user_bool.sample,
    is_covers: user_bool.sample
    )
end

# Create bands
puts "Creating bands..."
all_bands = []

# # FOR DEMO
# demo_band = Band.new(name: "A cool band",
#     address: "5417 rue St-Dominique, Montreal, Canada",
#     personal_website: "www.nickelback.com",
#     youtube_link: "https://www.youtube.com/watch?v=BB0DU4DoPP4",
#     soundcloud_link: band_soundcloud_links.sample,
#     bio: band_bios.sample,
#     experience: experiences.sample,
#     is_live: band_bools.sample,
#     is_recording: band_bools.sample,
#     is_jamming: band_bools.sample,
#     is_composition: band_bools.sample,
#     is_cover: band_bools.sample)
# all_bands << demo_band


band_name.each do |name|
  all_bands << Band.new(name: name,
    address: band_addresses.sample,
    personal_website: band_personal_websites.sample,
    youtube_link: band_youtube_links.sample,
    soundcloud_link: band_soundcloud_links.sample,
    bio: band_bios.sample,
    experience: experiences.sample,
    is_live: band_bools.sample,
    is_recording: band_bools.sample,
    is_jamming: band_bools.sample,
    is_composition: band_bools.sample,
    is_cover: band_bools.sample)
end

# Associate band(s) to user
puts "Associating band(s) to users..."
all_bands.each_with_index do |band, i|
  if all_users[i].nil?
    band.user = all_users.sample
  else
    band.user = all_users[i]
  end
  band.save!
end

# Create styles
puts "Creating styles..."
all_styles = []
styles.each do |style|
  all_styles << Style.new(name: "#{style}")
end

# Create instruments
puts "Creating instruments..."
all_instruments = []
instruments.each do |instrument|
  all_instruments << Instrument.new(name: "#{instrument}")
end

# Associate style(s) to users
puts "Associating style(s) to users..."
all_users.each do |user|
  styles = all_styles.sample([2, 2, 2, 2, 3, 3, 1, 1, 1, 4, 5].sample)
  styles.each do |style|
    StyleUser.create(style: style, user: user)
  end
end

# Create favorite artists
all_favorite_artists = []
favorite_artists.each do |favorite_artist|
  all_favorite_artists << FavoriteArtist.create!(name: favorite_artist)
end

# Associate favorite artists to users
puts "Associating favorite artists to users..."
all_users.each do |user|
  artists = all_favorite_artists.sample([2,3,3,4,4,5,5,5,6,6,6,7,7].sample)
  artists.each do |artist|
    FavoriteArtistUser.create(favorite_artist: artist, user: user)
  end
end

# Associate favorite artists to bands
puts "Associating favorite artists to bands..."
all_bands.each do |band|
  artists = all_favorite_artists.sample([2,3,3,4,4,5,5,5,6,6,6,7,7].sample)
  artists.each do |artist|
    FavoriteBandArtist.create(favorite_artist: artist, band: band)
  end
end

# Associate instrument(s) to user
puts "Associating instrument(s) to users..."
all_users.each do |user|
  instruments = all_instruments.sample([1, 1, 1, 1, 2, 2, 2, 3, 3, 4].sample)
  instruments.each do |instrument|
    InstrumentUser.create(instrument: instrument, user: user, experience: experiences.sample, is_available: [true, true, true, true, true, true, false].sample)
  end
end

# Associate style(s) to bands
puts "Associating style(s) to bands..."
all_bands.each do |band|
  styles = all_styles.sample([1,1,1].sample)
  styles.each do |style|
    StyleBand.create(style: style, band: band)
  end
end

# Associate needed instrument(s) to bands
puts "Associating needed instrument(s) to users..."
all_bands.each do |band|
  unless [true, true, true, true, false].sample == false
    instruments = all_instruments.sample([1, 1, 1, 1].sample)
    instruments.each do |instrument|
      NeededInstrument.create(instrument: instrument, band: band)
    end
  end
end

# Create conversations
puts "Creating test conversations..."
conv = Conversation.new()
conv.user1 = all_users[0]
conv.user2 = all_users[1]
conv.save!

# Create messages
puts "Creating test messages..."
message = Message.new()
message.conversation = conv
message.user = User.first
message.save!

puts "************* D O N E *************"

puts("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░")
puts("░░░░░░░░░░░░░▄▄▄▄▄▄▄░░░░░░░░░")
puts("░░░░░░░░░▄▀▀▀░░░░░░░▀▄░░░░░░░")
puts("░░░░░░░▄▀░░░░░░░░░░░░▀▄░░░░░░")
puts("░░░░░░▄▀░░░░░░░░░░▄▀▀▄▀▄░░░░░")
puts("░░░░▄▀░░░░░░░░░░▄▀░░██▄▀▄░░░░")
puts("░░░▄▀░░▄▀▀▀▄░░░░█░░░▀▀░█▀▄░░░")
puts("░░░█░░█▄▄░░░█░░░▀▄░░░░░▐░█░░░")
puts("░░▐▌░░█▀▀░░▄▀░░░░░▀▄▄▄▄▀░░█░░")
puts("░░▐▌░░█░░░▄▀░░░░░░░░░░░░░░█░░")
puts("░░▐▌░░░▀▀▀░░░░░░░░░░░░░░░░▐▌░")
puts("░░▐▌░░░░░░░░░░░░░░░▄░░░░░░▐▌░")
puts("░░▐▌░░░░░░░░░▄░░░░░█░░░░░░▐▌░")
puts("░░░█░░░░░░░░░▀█▄░░▄█░░░░░░▐▌░")
puts("░░░▐▌░░░░░░░░░░▀▀▀▀░░░░░░░▐▌░")
puts("░░░░█░░░░░░░░░░░░░░░░░░░░░█░░")
puts("░░░░▐▌▀▄░░░░░░░░░░░░░░░░░▐▌░░")
puts("░░░░░█░░▀░░░░░░░░░░░░░░░░▀░░░")
puts("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░")
