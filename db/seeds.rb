# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },{ name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "************* B E G I N *************"

srand(777)

# USER SEED
users = [
  ["bob@gmail.com", "bob", "Bobby Lee"],
  ["joe@gmail.com", "joe", "Joe Jackson"],
  ["luc@gmail.com", "luc", "Luc Mosser"],
  ["nacera@gmail.com", "nacera", "Nacera H"],
  ["nicolas@gmail.com", "nicolas", "Nicolas Fraisse"],
  ["simon@gmail.com", "simon", "Simon Ravary"],
  ["esther@gmail.com", "esther", "Esther Dufour"],
  ["paul@gmail.com", "paulo", "Paul Bernard"],
  ["jennifer@gmail.com", "jennifer", "Jennifer Smith"],
  ["stephane@gmail.com", "stephane", "Stephane Lafontaine"],
  ["Greg@gmail.com", "greg", "Gregoire Turo"],
  ["Jack@gmail.com", "jack", "Jack Slip"],
  ["Dennis@gmail.com", "dennis", "Dennis Lee"],
  ["Camille@gmail.com", "camille", "Camille Desautels"],
  ["Adrien@gmail.com", "adrien", "Adrien Grenier"]
]

user_coordinates = [
  {:email=>"bob@gmail.com", :latitude=>45.424559, :longitude=>-73.6067171},
  {:email=>"joe@gmail.com", :latitude=>45.4983473, :longitude=>-73.6210866},
  {:email=>"luc@gmail.com", :latitude=>45.5203880930233, :longitude=>-73.5699152488372},
  {:email=>"nacera@gmail.com", :latitude=>45.5246812465116, :longitude=>-73.5923374},
  {:email=>"nicolas@gmail.com", :latitude=>45.4983473, :longitude=>-73.6210866},
  {:email=>"simon@gmail.com", :latitude=>45.424559, :longitude=>-73.6067171},
  {:email=>"esther@gmail.com", :latitude=>45.5246812465116, :longitude=>-73.5923374},
  {:email=>"paul@gmail.com", :latitude=>45.5438734402597, :longitude=>-73.5546520428571},
  {:email=>"jennifer@gmail.com", :latitude=>45.4983473, :longitude=>-73.6210866},
  {:email=>"stephane@gmail.com", :latitude=>45.428752871729, :longitude=>-73.60549779686},
  {:email=>"greg@gmail.com", :latitude=>45.428752871729, :longitude=>-73.60549779686},
  {:email=>"jack@gmail.com", :latitude=>45.4983473, :longitude=>-73.6210866},
  {:email=>"dennis@gmail.com", :latitude=>45.5438734402597, :longitude=>-73.5546520428571},
  {:email=>"camille@gmail.com", :latitude=>45.4975232, :longitude=>-73.6242273},
  {:email=>"adrien@gmail.com", :latitude=>45.4983473, :longitude=>-73.6210866}
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

user_photos = [
  "https://overblown.co.uk/wp-content/uploads/2019/02/Musician-Resume.jpg",
  "https://media.npr.org/assets/img/2018/11/01/hellojunebyjoshsaul-2e187ce8b2e0a894a03e21d768fd03112727967d-s800-c85.jpg",
  "https://www.themeshband.co.uk/img/wedding-bands-for-hire.jpg",
  "http://www.deboband.com/wp-content/uploads/2016/03/group-photo-colorful.jpg",
  "https://www.redwallpapers.com/public/redwallpapers-large-thumb/ray-band-reggae-funk-hip-hop-free-stock-photos-images-hd-wallpaper.jpg",
  "https://budapestlocal.com/wp-content/uploads/2014/11/random-04.jpg",
  "https://i0.wp.com/www.phatmandrums.com/wp-content/uploads/2011/12/rent2010-band2.jpg",
  "https://www.huntsvillemusic.com/pictures/decorative/allyfree/allyfreefb2.jpg",
  "https://www.wallpaperflare.com/static/830/563/582/devildriver-tattoo-t-shirts-piercing-wallpaper.jpg",
  "https://www.utc.edu/music/images/jazz-band-2018.jpg",
  "https://www.andavenice.com/wp-content/uploads/2018/08/Veeblefetzer-03-1264x800.jpg",
  "https://img.washingtonpost.com/wp-apps/imrs.php?src=https://img.washingtonpost.com/blogs/going-out-guide/files/2016/04/st-angaleena-61413210916-1024x688.jpg&w=1484",
  "https://www.gannett-cdn.com/presto/2019/08/28/PDTF/a05c1785-3f6b-420a-8b94-04f0c7f1f8a1-New-SR-Promo-photo.jpg?crop=2399,1350,x0,y0&width=3200&height=1680&fit=bounds",
  "https://www.thebostoncalendar.com/system/events/photos/000/287/508/large/TigerMoan.jpg?1562679565",
  "https://1.bp.blogspot.com/-GIVbHFJUfXU/XMx0ZyALhwI/AAAAAAABBRo/_8t6fWLjqJwdO5sfSLSBq9cU9iy0C7peQCLcBGAs/s1600/skunk-radio-live-independent-artist-band-auditions-Green%2BMusic-Blues-Merida-Mexico-srl-networks-london-music-pr.jpg",
  "https://www.theranch.com/img/bands/large/kelly_rae.jpg",
  "https://images.pexels.com/photos/2167139/pexels-photo-2167139.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/210887/pexels-photo-210887.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1343331/pexels-photo-1343331.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2479312/pexels-photo-2479312.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://www.redwallpapers.com/download/original/ranetki-girls-band-members-smile-free-stock-photos-images-hd-wallpaper.jpg",
  "https://www.redwallpapers.com/download/original/group-1-crew-band-girl-haircuts-daylight-free-stock-photos-images-hd-wallpaper.jpg",
  "https://infotel.ca/news/medialibrary/image/orig-mediaitemid63936-1566.jpg",
  "https://makingmusicmag.com/wp-content/uploads/2019/08/Live-music-WEB.jpg",
  "https://www.liveabout.com/thmb/MlK2slhL5u7cnOI-bbsu2ilDvYU=/1280x877/filters:no_upscale():max_bytes(150000):strip_icc()/52454579-58b8a7113df78c353ce0913b.jpg",
  "https://images.pexels.com/photos/462442/pexels-photo-462442.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1309240/pexels-photo-1309240.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1849200/pexels-photo-1849200.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2601215/pexels-photo-2601215.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/756241/pexels-photo-756241.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1576280/pexels-photo-1576280.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/417473/pexels-photo-417473.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/274406/pexels-photo-274406.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/274406/pexels-photo-274406.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1427368/pexels-photo-1427368.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2091374/pexels-photo-2091374.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1864642/pexels-photo-1864642.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1327426/pexels-photo-1327426.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/167526/pexels-photo-167526.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1703686/pexels-photo-1703686.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1808711/pexels-photo-1808711.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1460037/pexels-photo-1460037.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1223248/pexels-photo-1223248.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1425297/pexels-photo-1425297.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/977971/pexels-photo-977971.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1601/black-and-white-man-person-musician.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1625355/pexels-photo-1625355.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2462980/pexels-photo-2462980.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1428509/pexels-photo-1428509.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/936131/pexels-photo-936131.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1183095/pexels-photo-1183095.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/221206/pexels-photo-221206.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1551019/pexels-photo-1551019.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.unsplash.com/photo-1471565661762-b9dfae862dbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1497405417022-3fefbce30a70?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1518499845966-9a86ddb68051?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1460723237483-7a6dc9d0b212?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1559694097-9481924b2905?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1511869805211-4ff749e15f73?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1559865662-53df87d25df6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1542491449-d5817c50314f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1476382929176-f7b329008e17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1489602642804-64dea1e3ebc1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1423110041833-0d5dfcc552e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
]

user_personal_websites = ["https://www.nihttps://www.youtube.com/watch?v=BB0DU4DoPP4"]
user_youtube_links = ["https://www.youtube.com/watch?v=Jpw5Y2DMai4"]
user_soundcloud_links = ["https://soundcloud.com/rojasonthebeat/look-at-me-ft-xxxtentacion"]
user_bios = ["Extreme communicator. Problem solver. Avid travel expert. Food specialist. Unapologetic coffee guru.", "Incurable tv evangelist. Alcohol aficionado. Food fan. Social mediaholic. Twitter maven.", "Hardcore alcohol evangelist. Beer buff. Social media fanatic. Troublemaker. Explorer.", "Unapologetic social media lover. Twitter fanatic. Web fan. Tv ninja. Music guru. Baconaholic.", "Gamer. Unable to type with boxing gloves on. Social media lover. Extreme music fan. Passionate troublemaker.", "Travel practitioner. Web fanatic. Problem solver. Reader. General explorer. Music junkie. Twitter aficionado."]
user_bool = [true, true, false]

# STYLE SEED
# styles = ["Electronic", "Hip Hop", "Jazz", "Rock"]
styles = ["Blues", "Electronic", "Hip Hop", "Jazz", "Pop", "R&B", "Rock", "Metal", "Punk"]

# INSTRUMENT SEED
instruments = ["Guitar", "Bass", "Drums", "Vocals", "Piano"]
# instruments = ["Guitar", "Bass", "Drums", "Vocals", "Synthesizer", "Saxophone", "Violin"]

# BAND SEED

band_bios = [ "Hailing from the garages of Montréal, we busted down the doors of the music scene in 2016 with our debut album. With our latest album, we mixed some bubbly melodies with straightforward guitar work to concoct a solid record chock full of uber-memorable tunes. Our music appeals to young, old and the deceased fans alike.",
  "Though we have spent our time saturated in music, dance & performance, it is the release of our debut album that has marked our true musical introduction to the world of music. Within this repertoire, we have proven a compelling combination of rich pop layers among mixed styles of rhythm & blues, rock & soul. By melding hook-filled melody within hard & heavy beats, we have shown our ability to compact a vast array of influence & experience into a singular masterpiece.",
  "We don’t give no damn. We have been around playing the best vegan blues & jazz. We like to party. The ladies love us & the men want to be us. We are like warm butter on hot bread and our music is fascinating and packs a punch like Avocado Toast. We don’t give no damn.",
  "We are a rock band. Explaining more than that is unnecessary. The beat & bass are undeniable & have been operating for years. The voice has rare balance between anger & mockery; guitars are punchy & stringy, like they should be.",
  "Our band plays garage-psych music kinda stuff and we throw crazy shows where people actually show up. We practice, record and communicate with the devil in a haunted basement in Hochelaga. The band is made of several members. We also make a Youtube show together called Deep Stuff about how much we love pizza, poutine and beer. We are all best friends. The end.",
  "We are a Toronto-based party band playing favourite New Wave, Rock and Pop hits of the 1980s. Guitar, Bass, and Drums bring to life beloved songs from the 80s overlooked by most of the retrospective bands out there today. We solely tackle a lot of songs that are heavily dependent on synthesizers; songs that weren’t necessarily #1 hits, but can in no way be referred to as obscure, underground or garbage songs.",
  "By exercising remarkable musicianship, heavenly vocals and creative arrangements, along with a keen sense of humor and eccentric fashion, this quartet transforms pop/rock music classics performed in a gypsy mix style with a hint of bluegrass. Their creativity and virtuosity allows them to take the listener on a entertaining music journey through everything from AC/DC to Stevie Wonders to Michael Jackson to Deee-lite to Kool and the gang to Stromae.",
  "We are a collection of human beings from the community who use guitars, loops, drums, xylophones, white noise and shouting. We tune you up with a pretentious new-age sound and various styles under the hood. Our sole purpose is to sound unlike anything else you’ve ever heard whilst sounding exactly like everything else you’d ever want to hear. We will cure gout and tennis elbow.",
  "My gilfriend left me because of my obsession with Linkin Park. But in the end, it doesn't even matter. We are trendsetters with minimal content and great fun. We’ve been played on Online Radio One and have played songs at loads of gigs. Our songs are filled with lyrical puns and we love playing interesting random rhythmic patterns. Hit us up if you are looking to get some creative juices going.",
  "From reciting books of the bible in a cult to headlining pride festivals, we tour the world advocating a sense of belonging and a be who you are attitude. Our signature sound evolved through many late nights of watching Twin Peaks, James Bond and Tarantino films – injecting more than a hint of subversiveness into the sexy soundscapes of dangerous spy movies. We have a love of genre melding and pop culture maintaining our roots while bringing underground music to the mainstream.",
  "We love jamming it up and sipping on mojitos. Our group consists of many talents and questionable friendships. We enjoy meshing many styles into our performances and we have fun with it.",
  "We are the perfect storm of talent and vision...of musicianship and motivation...of business and pleasure. Our style is where arena-rock acts of the eighties meet modern pop and hip-hop shows. Big beats, slick pop vocal harmonies and ripping guitar solos are well-executed and frequently delivered to large crowds of screaming elderly fans."
]
bands = [
  [ "Balding Zombies",
    "3920 boulevard René-Lévesque, Montréal, Canada" ],
  [ "Orange Oysters",
    "4298 Derry, Malton, Canada" ],
  [ "Window Hipsters",
    "154 Avenue Ballantyne, Montréal" ],
  [ "Migraine Birds",
    "470 Pine Street, Alberta, Canada" ],
  [ "Werewolf Clowns",
    "9167 boulevard Gouin Ouest, Montréal" ],
  [ "Whiskey Stew",
    "4421 Weir Crescent, Toronto, Ontario" ],
  [ "Fateful Local",
    "4205 Bourret Montréal" ],
  [ "Army Under Reality",
    "10270 Rue Meilleur, Montréal" ],
  [ "Stalin's Teacups",
    "459 Rue St Paul, Montréal" ],
  [ "Lifeless Wednesday",
    "3230 Peel street, Montreal"],
  [ "H.E.A.R.T.",
    "4130 rue Saint Urbain, Montreal"],
  [ "Veruca Talent",
    "3420 avenue Park, Montreal"],
  [ "My Lifeless Romance",
    "5350 boulevard Saint Laurent, Montreal"],
  [ "Hands Ten",
    "4510 Greene Avenue, Montreal"],
  [ "Ten Seconds to Jupiter",
    "3333 Jarry street, Montreal"],
  [ "Bigplay",
    "2200 rue Saint Denis, Montreal"],
  [ "Midnight Spacemen",
    "1490 Gouin Boulevard, Montreal"],
  [ "The Big Can",
    "6025 rue de la Gauchetiere, Montreal"],
  [ "The Moon Revival",
    "6259 rue Saint-Paul, Montreal"],
  [ "Super Joystick",
    "2600 Chemin Bedford, Montreal"],
  [ "Joy Fighters",
    "6155 chemin Deacon, Montreal"],
  [ "Nigel Legin",
    "6701 29e avenue, Montreal"],
  [ "Between the Forks and Me",
    "11518 avenue Olier, Montreal-Nord"],
  [ "One Zillion Cats",
    "308 rue saint-michel, Longueuil"],
  [ "Bathtub Smooching",
    "2810 rue Martigny, Longueuil"],
  [ "TEDDY",
    "2335 rue de Lorimier, Longueuil"],
  [ "Ron Talent",
    "480 rue Dubois, Sainte-Catherine"],
  [ "King Ginger",
    "83 17e avenue, Roxboro"],
  [ "Ronatron",
    "1098 rue Bessieres, Laval"],
  [ "Megateddy",
    "590 rue de Chambéry, Laval"],
  [ "No Rest For the Librarians",
    "118 5e rue, Laval"],
  [ "Of Men and Gerbils",
    "10719 avenue d'auteuil, Montreal"],
  [ "Screwed Pixel",
    "2685 rue Blainville, Laval"],
  [ "Aurora Gist",
    "317 rue Greendale, Rosemere"],
  [ "Dripping Grasshopper",
    "1739 16e Avenue, pointe-Aux-Trembles"],
  [ "Greasy Overtime",
    "839 rue Hatin, Saint-Jerome"],
  [ "Addicted Hunt",
    "400 rue des Pins, Saint-Amable"],
  [ "Mad Discharge",
    "66 rue Gregoire, Saint-JEan-Sur-Richelieu"],
  [ "Spurt Of Halfway",
    "33 rue Saint-Maurice, Chateauguay"],
  [ "Face Forward",
    "1402 rue Hottin, Joliette"],
  [ "Beehive Onions",
    "7503 Rue St-Denis, Montreal"],
  [ "Airship Gamma",
    "7766 George Street, Lasalle"],
  [ "Vomit Depression",
    "11727 Rue Notre Dame E, Montreal"],
  [ "Double Chins",
    "1092 Rue Du Prince Albert, Quebec "],
  [ "While Worm",
    "202 Quebec Schreiber, Ontario "],
  [ "Stiletto Steves",
    "818 Vancouver St, Creston, BC"],
  [ "The Pens",
    "909 Fraser St Vancouver, BC"]
]

band_coordinates = [
 {:name=>"Balding Zombies", :latitude=>45.4673092, :longitude=>-73.5382863},
 {:name=>"Orange Oysters", :latitude=>43.7121445, :longitude=>-79.633457},
 {:name=>"Window Hipsters", :latitude=>45.4507075, :longitude=>-73.6387947727273},
 {:name=>"Migraine Birds", :latitude=>55.1894081, :longitude=>-113.2089382},
 {:name=>"Werewolf Clowns", :latitude=>45.5160213426982, :longitude=>-73.7458516241356},
 {:name=>"Whiskey Stew", :latitude=>43.7721509, :longitude=>-79.1966399},
 {:name=>"Fateful Local", :latitude=>45.4964939241379, :longitude=>-73.6319093275862},
 {:name=>"Army Under Reality", :latitude=>45.541134, :longitude=>-73.6692039},
 {:name=>"Stalin's Teacups", :latitude=>45.4722592, :longitude=>-73.8786104},
 {:name=>"Lifeless Wednesday", :latitude=>43.623786, :longitude=>-79.5691896},
 {:name=>"H.E.A.R.T.", :latitude=>45.5163754900921, :longitude=>-73.5820467892204},
 {:name=>"Veruca Talent", :latitude=>45.4752393, :longitude=>-73.6650864},
 {:name=>"My Lifeless Romance", :latitude=>45.5248293520537, :longitude=>-73.5969680051957},
 {:name=>"Hands Ten", :latitude=>45.4840244, :longitude=>-73.5837346},
 {:name=>"Ten Seconds to Jupiter", :latitude=>45.537762, :longitude=>-73.6288532664013},
 {:name=>"Bigplay", :latitude=>45.5280202, :longitude=>-73.5918097},
 {:name=>"Midnight Spacemen", :latitude=>45.68281135, :longitude=>-73.5206964425226},
 {:name=>"The Big Can", :latitude=>45.6470812, :longitude=>-73.4965248},
 {:name=>"The Moon Revival", :latitude=>45.4722592, :longitude=>-73.8786104},
 {:name=>"Super Joystick", :latitude=>45.5034099, :longitude=>-73.6377366},
 {:name=>"Joy Fighters", :latitude=>45.5124574219512, :longitude=>-73.620492702439},
 {:name=>"Nigel Legin", :latitude=>45.5691849, :longitude=>-73.5845268},
 {:name=>"Between the Forks and Me", :latitude=>45.6125676, :longitude=>-73.6124766},
 {:name=>"One Zillion Cats", :latitude=>45.5328679, :longitude=>-73.4889967},
 {:name=>"Bathtub Smooching", :latitude=>45.5264993, :longitude=>-73.4505425},
 {:name=>"TEDDY", :latitude=>45.5181625, :longitude=>-73.5022495},
 {:name=>"Ron Talent", :latitude=>45.403045, :longitude=>-73.571755},
 {:name=>"King Ginger", :latitude=>45.4987793, :longitude=>-73.8067133},
 {:name=>"Ronatron", :latitude=>45.5303561, :longitude=>-73.8045605},
 {:name=>"Megateddy", :latitude=>45.5600654, :longitude=>-73.7057041},
 {:name=>"No Rest For the Librarians", :latitude=>45.5601173, :longitude=>-73.6940428},
 {:name=>"Of Men and Gerbils", :latitude=>45.5531625, :longitude=>-73.6696376},
 {:name=>"Screwed Pixel", :latitude=>45.5915677, :longitude=>-73.6748157},
 {:name=>"Aurora Gist", :latitude=>45.645858, :longitude=>-73.795179},
 {:name=>"Dripping Grasshopper", :latitude=>45.6452105, :longitude=>-73.5012292},
 {:name=>"Greasy Overtime", :latitude=>45.7727316, :longitude=>-74.0561927},
 {:name=>"Addicted Hunt", :latitude=>45.6456733, :longitude=>-73.296056},
 {:name=>"Mad Discharge", :latitude=>45.3129714, :longitude=>-73.258651},
 {:name=>"Spurt Of Halfway", :latitude=>45.357057, :longitude=>-73.747336},
 {:name=>"Face Forward", :latitude=>46.0028892, :longitude=>-73.4238793},
 {:name=>"Beehive Onions", :latitude=>45.5401433010638, :longitude=>-73.6204021765957},
 {:name=>"Airship Gamma", :latitude=>52.63241695, :longitude=>-1.69252925582386},
 {:name=>"Vomit Depression", :latitude=>45.6774239, :longitude=>-73.492987},
 {:name=>"Double Chins", :latitude=>46.8901514, :longitude=>-71.2714247},
 {:name=>"While Worm", :latitude=>48.8096579451319, :longitude=>-87.264121129569},
 {:name=>"Stiletto Steves", :latitude=>49.0978772, :longitude=>-116.5163929},
 {:name=>"The Pens", :latitude=>49.2588122, :longitude=>-123.0891835}
]


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
users.each_with_index do |user, index|
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
    is_covers: user_bool.sample,
    latitude: user_coordinates[index][:latitude],
    longitude: user_coordinates[index][:longitude]
    )
  # sleep(1.01)
  puts "- #{user[1]} created"

end

# Create bands
puts "Creating bands..."
all_bands = []
bands.each_with_index do |band, index|
  all_bands << Band.new(
    name: band[0],
    bio: band_bios.sample,
    address: band[1],
    latitude: band_coordinates[index][:latitude],
    longitude: band_coordinates[index][:longitude],
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

# CREATE 2 BANDS

# Associate band(s) to user
puts "Associating band(s) to users..."
all_bands.each_with_index do |band, i|
  if all_users[i].nil?
    band.user = all_users.sample
  else
    band.user = all_users[i]
  end
  band.save!
  # sleep(1.01)
  puts "- #{band.name} created"
end



# Associate photos to band
puts "Associating photos to band"
all_bands.each do |band|
  photos = user_photos.sample([1,3].sample)
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



# CREATE STEAKHOLDERS
puts ".....Creating Steakholders....."
steakholders = Band.create!(
  name: "Steakholders",
  bio: "Our band plays garage-psych music kinda stuff and we throw crazy shows where people actually show up. We practice, record and communicate with the devil in a haunted basement in Hochelaga. The band is made of several members. We also make a Youtube show together called Deep Stuff about how much we love pizza, poutine and beer. We are all best friends. The end.",
  address: "5217 avenue Esplanade, Montreal",
  latitude: 45.55953695,
  longitude: -73.552118039629,
  personal_website: "www.steakholders.com",
  youtube_link: "https://www.youtube.com/embed/gMOk7kaEqJk",
  soundcloud_link: "https://soundcloud.com/liltjay/f-n",
  experience: "2",
  is_live: true,
  is_recording: true,
  is_jamming: true,
  is_composition: true,
  is_cover: false,

  user: all_users[9]

)

# Steakholder Styles
puts ".....Creating Steakholder styles....."
StyleBand.create!(band: steakholders, style: Style.find_by_name("Jazz"))
StyleBand.create!(band: steakholders, style: Style.find_by_name("Pop"))

# Steakholder Photos
puts ".....Creating Steakholder photos....."
BandPhoto.create!(band: steakholders, remote_photo_url: "https://images.pexels.com/photos/1551019/pexels-photo-1551019.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")

BandPhoto.create!(band: steakholders, remote_photo_url: "https://images.unsplash.com/photo-1471565661762-b9dfae862dbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")

BandPhoto.create!(band: steakholders, remote_photo_url: "https://images.unsplash.com/photo-1497405417022-3fefbce30a70?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")


# Steakholder Needed Instruments
puts ".....Creating Steakholder needed instruments....."
NeededInstrument.create!(band: steakholders, instrument: Instrument.find_by_name("Drums"))


# CREATE TOWEL ATTACK
puts ".....Creating Towel Attack....."
towelattack = Band.create(
  name: "Towel Attack",
  bio: "Hailing from the garages of Montréal, we busted down the doors of the music scene in 2016 with our debut album. With our latest album, we mixed some bubbly melodies with straightforward guitar work to concoct a solid record chock full of uber-memorable tunes. Our music appeals to young, old and the deceased fans alike.",
  address: "5022 rue le jeune, Montreal",
  latitude: 45.5250394241379,
  longitude: -73.5897133758621,
  personal_website: "www.towelattack.com",
  youtube_link: "https://www.youtube.com/embed/gMOk7kaEqJk",
  soundcloud_link: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/43227597&color=%237060c0&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true",
  experience: "3",
  is_live: true,
  is_recording: true,
  is_jamming: true,
  is_composition: false,
  is_cover: false,

  user: all_users[8]
)

# Towel Attack Styles
puts ".....Creating Towel Attack styles....."
StyleBand.create!(band: towelattack, style: Style.find_by_name("Rock"))
StyleBand.create!(band: towelattack, style: Style.find_by_name("Hip Hop"))

# Towel Attack Photos
puts ".....Creating Towel Attack photos....."
BandPhoto.create!(band: towelattack, remote_photo_url: "https://images.pexels.com/photos/1551019/pexels-photo-1551019.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
)
BandPhoto.create!(band: towelattack, remote_photo_url: "https://images.unsplash.com/photo-1471565661762-b9dfae862dbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
)
BandPhoto.create!(band: towelattack, remote_photo_url: "https://images.unsplash.com/photo-1497405417022-3fefbce30a70?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
)

# Towel Attack Needed Instruments
puts ".....Creating Towel Attack needed instruments....."
NeededInstrument.create!(band: towelattack, instrument: Instrument.find_by_name("Drums"))



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
