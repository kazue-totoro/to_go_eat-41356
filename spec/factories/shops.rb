FactoryBot.define do
  factory :shop do
    shop_category_id { 2 }
    name { Faker::Lorem.characters(number: 20) }
    address { Faker::Address.street_address }
    phone_number { Faker::Number.number(digits: 11) }

    association :user

    after(:build) do |shop|
      shop.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png', content_type: 'image/png')
    end
  end
end
