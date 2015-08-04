require 'faker'

15.times do 
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

users = User.all

150.times do 
  Item.create!(
   user: users.sample,
   name: Faker::Lorem.sentence
  )
end

items = Item.all

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Item.count} items created."