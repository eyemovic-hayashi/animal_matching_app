FactoryBot.define do
  factory :animal do
    sex             { 1 }
    old_year_id     { 1 }
    old_month_id    { 1 }
    vaccine         { 1 }
    sterilization   { 1 }
    character       { Faker::Lorem.sentence }
    reason          { Faker::Lorem.sentence }
    prefecture_id   { 1 }
    transfer_cost   { Faker::Lorem.sentence }
    transfer_terms  { Faker::Lorem.sentence }

    after(:build) do |animal|
      animal.image.attach(io: File.open('app/assets/images/icon1.png'), filename: 'icon1.png')
    end
  end
end
