Company.delete_all

20.times do
  Company.create  name: Faker::Company.name,
                  city: Faker::Address.city,
                  nonprofit: [true, false, false].sample
end
