# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.delete_all
Conversation.delete_all
Band.delete_all
User.delete_all
nacera = User.create!(email: "nacera@gmail.com",password: "123456",username:"nacera1",full_name: "nacerahammid",gender:"f",age:"30",address:"Montreal",bio:"im cool",is_jamming: true, youtube_link: "https://www.youtube.com/channel/UCFWMfhxupSN4omXMaX4Lmyg?view_as=subscriber")
nac = User.create!(email: "nac@gmail.com",password: "123456",username:"nacera2",full_name: "nacerahammid",gender:"f",age:"30",address:"Montreal",bio:"im cool",is_jamming: true, youtube_link: "https://www.youtube.com/channel/UCFWMfhxupSN4omXMaX4Lmyg?view_as=subscriber")
bad = Band.new(name:"bad",bio:" we are so cool and bad",is_jamming:true)
bad.user = nacera
bad.save!
conv = Conversation.new()
conv.user1 = nacera
conv.user2 = nac
conv.save!
message = Message.new(msg:"helloooo")
message.conversation = conv
message.user = User.first
message.save!
