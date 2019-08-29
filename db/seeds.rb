# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Delete all records
NeededInstrument.delete_all
StyleBand.delete_all
puts "Deleting previous records..."
Style.delete_all
Instrument.delete_all
Message.delete_all
Conversation.delete_all
Band.delete_all
User.delete_all

# Create users
puts "Creating users..."
nacera = User.create!(email: "nacera@gmail.com", password: "123456", username:"nacera", full_name: "Nacera H",  gender:"Female", age:"30", address:"Montreal", bio:"im cool", is_jamming: true,  youtube_link: "https://www.youtube.com/channel/UCFWMfhxupSN4omXMaX4Lmyg?view_as=subscriber")
luc = User.create!(email: "luc@gmail.com", password: "123456", username:"luc", full_name: "Luc M",  gender:"m", age:"Male", address:"Montreal", bio:"im cool", is_jamming: true,  youtube_link: "https://www.youtube.com/channel/UCFWMfhxupSN4omXMaX4Lmyg?view_as=subscriber")

# Create bands
puts "Creating bands..."
thebeatles = Band.new(name:"The Beatles", bio:"We are an old band", is_jamming:true, address:"16 Villa Gaudelet, Paris")
thebeatles.user = nacera
thebeatles.save!

# Create styles
puts "Creating styles..."
jazz = Style.new(name:"jazz")

# Create instruments
puts "Creating instruments..."
guitar = Instrument.new(name:"guitar")

# Associate style & instrument to band
puts "Adding style and instrument to join tables style_bands and instrument_bands"
style_band = StyleBand.new()
style_band.style = jazz
style_band.band = thebeatles
style_band.save!

# style_user= StyleUser.new()
needed_instrument = NeededInstrument.new()
needed_instrument.band = thebeatles
needed_instrument.instrument = guitar
needed_instrument.save!

# Create conversations
puts "Creating conversations..."
conv = Conversation.new()
conv.user1 = nacera
conv.user2 = luc
conv.save!

# Create messages
puts "Creating messages..."
message = Message.new(msg:"helloooo")
message.conversation = conv
message.user = User.first
message.save!
puts "donnnnnnnnnnnnnnnnnnnne:::::!!!!!!!???"
