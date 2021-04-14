Audition.destroy_all
Role.destroy_all

puts "Seeding Roles"

10.times do 
    Role.create(character_name: Faker::Movies::HarryPotter.character)
end

puts "Seeding Auditions"

25.times do 
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Movies::HarryPotter.location,
        phone: rand(1000000000..9999999999),
        hired: [true, false].sample,
        role_id: Role.all.sample.id 
        )
end