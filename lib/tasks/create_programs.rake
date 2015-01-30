task create_programs: :environment  do
  10.times do
    Program.create!({
      name: Faker::Company.name,
      description: Faker::Lorem.sentence
    })

  end
puts "10 workout programs created."
end