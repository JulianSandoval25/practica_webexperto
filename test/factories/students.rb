FactoryBot.define do
  factory :student do
    nombre { Faker::Name.first_name }
    apellido { Faker::Name.last_name }
    email { Faker::Internet.email }
  end
end
