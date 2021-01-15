# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.destroy_all
User.destroy_all
Channel.destroy_all
puts "start seeding ..."
names = ['general', 'paris', 'react']

names.each do |name|
  puts "seeding channels .."
  Channel.create!(name: name)
end

5.times do
  puts "seeding User .."
  user = User.create!(
    email: Faker::Internet.email,
    password: 'password',
    nickname: Faker::Internet.username
    )
  rand(2..4).times do
    Message.create!(
      content: Faker::TvShows::HowIMetYourMother.quote,
      user: user,
      channel: Channel.where("name = ?","general")[0]
      )
    end
    rand(2..4).times do
    Message.create!(
      content: Faker::TvShows::HowIMetYourMother.quote,
      user: user,
      channel: Channel.where("name = ?","paris")[0]
      )
    end
    rand(2..4).times do
    Message.create!(
      content: Faker::TvShows::HowIMetYourMother.quote,
      user: user,
      channel: Channel.where("name = ?","react")[0]
      )
    end
end
puts "end of the seeds ..."
