task create_programs: :environment  do
  10.times do
    Program.create!({
      name: Faker::Company.name,
      description: Faker::Lorem.sentence,
      user_id: 1
    })

  end
puts "10 workout programs created.  All have been set to user_id 1 which should correspond to the first user id you create."
end