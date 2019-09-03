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
  ["jennifer@gmail.com", "jennifer", "Jennifer Smith"],
  ["suzan@gmail.com", "suzan", "Suzan Smith"],
  ["Greg@gmail.com", "greg", "Gregoire Turo"],
  ["Jack@gmail.com", "jack", "Jack Slip"],
  ["Dennis@gmail.com", "dennis", "Dennis Lee"],
  ["Camille@gmail.com", "camille", "Camille Desautels"],
  ["Adrien@gmail.com", "adrien", "Adrien Grenier"]
]
password = "123123"
genders = ["Male", "Female"]
ages = [14..99]
user_addresses = [
  "3555 Boulevard Edouard-Montpetit, Montréal",
  "2630 rue St Germain, Montreal, Canada",
  "773 rue Gagné, Montreal, Canada",
  "3708 Rue Saint Hubert, Montreal, Canada",
  "7766 rue George, Lasalle, Canada",
  "7503 Rue St Denis, Montreal",
  "5139 avenue Casgrain, Montréal, Canada",
  "5350 avenue Decelles, Montréal, Canada"
]
user_photos = ["https://overblown.co.uk/wp-content/uploads/2019/02/Musician-Resume.jpg", "https://media.npr.org/assets/img/2018/11/01/hellojunebyjoshsaul-2e187ce8b2e0a894a03e21d768fd03112727967d-s800-c85.jpg"]
user_personal_websites = ["https://www.nihttps://www.youtube.com/watch?v=BB0DU4DoPP4"]
user_youtube_links = ["https://www.youtube.com/watch?v=Jpw5Y2DMai4"]
user_soundcloud_links = ["https://soundcloud.com/rojasonthebeat/look-at-me-ft-xxxtentacion"]
user_bios = ["Extreme communicator. Problem solver. Avid travel expert. Food specialist. Unapologetic coffee guru.", "Incurable tv evangelist. Alcohol aficionado. Food fan. Social mediaholic. Twitter maven.", "Hardcore alcohol evangelist. Beer buff. Social media fanatic. Troublemaker. Explorer.", "Unapologetic social media lover. Twitter fanatic. Web fan. Tv ninja. Music guru. Baconaholic.", "Gamer. Unable to type with boxing gloves on. Social media lover. Extreme music fan. Passionate troublemaker.", "Travel practitioner. Web fanatic. Problem solver. Reader. General explorer. Music junkie. Twitter aficionado."]
user_bool = [true, true, false]

# STYLE SEED
# styles = ["Electronic", "Hip Hop", "Jazz", "Rock"]
styles = ["Blues", "Country", "Electronic", "Flamenco", "Folk", "Hip Hop", "Jazz", "Latin", "Pop", "R&B", "Soul", "Rock", "Heavy Metal", "Punk"]

# INSTRUMENT SEED
instruments = ["Guitar", "Bass", "Drums"]
# instruments = ["Guitar", "Bass", "Drums", "Vocals", "Synthesizer", "Saxophone", "Violin"]

# BAND SEED

band_addresses = []

bands = [
  [ "Balding Zombies",
    "Hailing from the garages of Montréal, Balding Zombies busted down the doors of the pop scene in 2016 with their debut album, 'Night of the Blood Beast'. The band's latest album, 'The Two Towers', mixes Mike Nelson's bubbly melodies with straightforward guitar work to concoct a solid record chock full of uber-memorable tunes. With standout tracks like 'Bacon', the music of Balding Zombies appeals to pop fans and non-pop fans alike.",
    "3920 boulevard René-Lévesque, Montréal, Canada" ]
  [ "The Orange Oysters",
    "Though The Orange Oysters have spent their time saturated in music, dance & performance, it is the release of our debut album 'Discovered Spaces' that has marked our true musical introduction to the world of Pop. Within this repertoire, The Orange Oysters have proven a compelling combination of rich pop layers among mixed styles of rhythm & blues, rock & soul. By melding hook-filled melody within hard & heavy beats, we have shown our ability to compact a vast array of influence & experience into a singular masterpiece.",
    "4298 Derry, Malton, Canada" ]
  [ "Hipsters in the Windows",
    "Hipsters in the Windows don’t give no damn. We have been around playing the best vegan blues & jazz. We like to party. The ladies love us & the men want to be us. We are like warm butter on hot bread and our music is fascinating and packs a punch like Avocado Toast. Hipsters in the Windows don’t give no damn.",
    "154 Avenue Ballantyne, Montréal" ]
  [ "Migraine Birds",
    "Migraine Birds is a rock band. Explaining more than that is unnecessary. The beat & bass are undeniable & have been operating for years. The voice has rare balance between anger & mockery; guitars are punchy & stringy, like they should be.",
    "470 Pine Street, Alberta, Canada" ]
  [ "Werewolf Clowns",
    "Werewolf Clowns plays garage-psych music kinda stuff and we throw crazy shows where people actually show up. We practice, record and communicate with the devil in a haunted basement in Hochelaga. The band is Luke Tokyo Drifter, Magic Maggie, and some guy named Nick, who also works at a detective agency. Maggie also is a pastry chef and Luke thinks he works at a bar. We make a Youtube show together called Deep Stuff about how much we love pizza, poutine and beer. We are all best friends. The end.",
    "9167 boulevard Gouin Ouest, Montréal" ]
  [ "Whiskey Stew",
    "Whiskey Stew is a Toronto-based party band playing favourite New Wave, Rock and Pop hits of the 1980s. Adam Weatherman (Guitar), Christian Neonfinder (Bass), and Tim Flabergast (Drums) bring to life beloved songs from the 80s overlooked by most of the retrospective bands out there today. We solely tackle a lot of songs that are heavily dependent on synthesizers; songs that weren’t necessarily #1 hits, but can in no way be referred to as obscure, underground or garbage songs.",
    "4421 Weir Crescent, Toronto, Ontario" ]
  [ "Fateful Local",
    "By exercising remarkable musicianship, heavenly vocals and creative arrangements, along with a keen sense of humor and eccentric fashion, this quartet transforms pop/rock music classics performed in a gypsy jazz style with a hint of bluegrass. Their creativity and virtuosity allows them to take the listener on a entertaining music journey through everything from AC/DC to Stevie Wonders to Michael Jackson to Deee-lite to Kool and the gang to Stromae.",
    "4205 Bourret Montréal" ]
  [ "Army Under Reality",
    "We are a collection of human beings from the community who use guitars, loops, drums, xylophones, white noise and shouting. We tune you up with a pretentious new-age sound and plenty of R&B under the hood. Our sole purpose is to sound unlike anything else you’ve ever heard whilst sounding exactly like everything else you’d ever want to hear. We will cure gout and tennis elbow.",
    "10270 Rue Meilleur, Montréal" ]
  [ "Stalin's Teacups",
    "My gilfriend left me because of my obsession with Linkin Park. But in the end, it doesn't even matter. Stalin's Teacups are trendsetters with minimal content and great fun. We’ve been played on Online Radio One and have played songs at loads of gigs. Our songs are filled with lyrical puns and we love playing interesting random rhythmic patterns. Hit us up if you are looking to get some creative juices going.",
    "459 Rue St Paul, Montréal" ]


]

# band_name = ["Fateful Local", "Alternate Generation", "Slink Over Acrobat", "Creamy Escort", "Seemingly Yoke Of The Mellow Poetry", "Nickelback", "Nautical Barracuda", "Needy Balboa", "Favored Photograph", "Reverent Banter", "Repressed Wickedly", "Taylor Swift", "Either Cool", "Cool Powder", "Higher Archy", "Spasmodicum", "Wig Week", "Capricult", "Dr. Lov", "Miss Thought", "Dirty Little Secretion", "Balding Zombies", "The Orange Oysters", "Hipsters in the Windows", "Migraine Birds", "Werewolf Clowns", "Whisky Stew"]
# band_bios = ["Communicator. Typical beer trailblazer. Web buff. Professional coffee fanatic. Bacon aficionado.", "Gamer. Incurable twitter junkie. Hardcore analyst. Freelance coffee advocate. Evil pop culture aficionado. Tv guru. Proud student.", "Tv geek. Award-winning travel scholar. Music lover. Student. Coffee junkie. Freelance communicator.", "Typical pop cultureaholic. Music fanatic. Social media buff. Hipster-friendly food scholar. Total gamer. Beer expert.", "Travel enthusiast. Thinker. Total pop culture guru. Infuriatingly humble explorer. Avid bacon geek.", "Bacon nerd. Typical tv fanatic. General twitter evangelist. Beer buff. Lifelong problem solver.", "" ]
band_bios = []


# band_addresses = ["3920 René-Lévesque Blvd, Montréal, Canada", "4298  Derry Rd, Malton, Canada", "4470  Pine Street, Coronation, Alberta, Canada", "4421  Weir Crescent, Toronto, Ontario", "11688 Bd St Germain Montreal", "154 Av Ballantyne N Montréal-Ouest", "4205 Bourret Montréal QC H3S 1X1", "459 Rue St Paul E Montreal QC H2Y 1H5", "10270 Meilleur Street Montreal", "9167 Bd Gouin O Montreal QC H4K 2E2"]
band_personal_websites = ["http://www.shakaponk.com/"]
band_youtube_links = ["https://www.youtube.com/watch?v=Jpw5Y2DMai4"]
band_soundcloud_links = ["https://soundcloud.com/john-talabot/sets/music-for-days-like-these-nts"]
band_bools = [true, true, true, false]

# MISC SEED
experiences = ["1", "2", "3"]
# experiences = ["Beginner", "Intermediate", "Advanced"]
favorite_artists = ["Radiohead", "Rolling Stones", "Ariana Grande", "The Beatles", "Nickel Back", "Mozart", "LMFAO", "Lil Wayne", "Lil Peep", "Lil Xan", "Lil Pump", "Lil Baby"]


# Delete all records
puts "Deleting previous records..."
FavoriteArtistUser.delete_all
FavoriteBandArtist.delete_all
FavoriteArtist.delete_all
NeededInstrument.delete_all
StarredBand.delete_all
StyleBand.delete_all
StyleUser.delete_all
InstrumentUser.delete_all
BandPhoto.delete_all
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
    address: user_addresses.sample,
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
band.each do |band|
  all_bands << Band.new(name: band[0],
    bio: band[1],
    address: band[2],
    personal_website: band_personal_websites.sample,
    youtube_link: band_youtube_links.sample,
    soundcloud_link: band_soundcloud_links.sample,
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


# Associate photos to band
puts "Associating photos to band"
all_bands.each do |band|
  photos = user_photos.sample([1,1].sample)
  photos.each do |photo|
    BandPhoto.create!(remote_photo_url: photo, band: band)
    # band.save!
  end
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
  styles = all_styles.sample([1,2,3,4].sample)
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

# User Session for Action Cable
puts UserSession.destroy_all
UserSession.create!(identifier: User.first.id)

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
