task create_trainers: :environment do 
  10.times do
    Trainer.create!({
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      about_me: Faker::Lorem.sentence
      })
  
end
puts "10 trainers created"
end