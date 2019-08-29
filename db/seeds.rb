# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NeededInstrument.delete_all
StyleBand.delete_all
puts "deleting previous records"
Style.delete_all
Instrument.delete_all

Message.delete_all
Conversation.delete_all
Band.delete_all
User.delete_all
puts "create users"
nacera = User.create!(email: "nacera@gmail.com",password: "123456",username:"nacera1",full_name: "nacerahammid",gender:"f",age:"30",address:"Montreal",bio:"im cool",is_jamming: true, youtube_link: "https://www.youtube.com/channel/UCFWMfhxupSN4omXMaX4Lmyg?view_as=subscriber")
nac = User.create!(email: "nac@gmail.com",password: "123456",username:"nacera2",full_name: "nacerahammid",gender:"f",age:"30",address:"Montreal",bio:"im cool",is_jamming: true, youtube_link: "https://www.youtube.com/channel/UCFWMfhxupSN4omXMaX4Lmyg?view_as=subscriber")
puts "creating bands"
bad = Band.new(name:"bad",bio:" we are so cool and bad",is_jamming:true,address:"16 Villa Gaudelet, Paris")
bad.user = nacera
bad.save!
puts "creating styles"
jaz = Style.new(name:"jaz")
puts"creatings instruments"
guitare = Instrument.new(name:"guitare")
puts "adding style and instrument to join tables style-band and instrument_band"
style_band = StyleBand.new()
style_band.style = jaz
style_band.band = bad
style_band.save!
# style_user= StyleUser.new()
needed_instrument = NeededInstrument.new()
needed_instrument.band = bad
needed_instrument.instrument = guitare
needed_instrument.save!

puts"creating conversations"
conv = Conversation.new()
conv.user1 = nacera
conv.user2 = nac
conv.save!
puts"creating message"
message = Message.new(msg:"helloooo")
message.conversation = conv
message.user = User.first
message.save!
puts "donnnnnnnnnnnnnnnnnnnne:::::!!!!!!!???"
