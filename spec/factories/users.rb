FactoryBot.define do
  factory :user do
    nickname { Faker::Name.middle_name }
    email { Faker::Internet.email }
    password { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end
