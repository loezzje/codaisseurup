FactoryGirl.define do
  factory :event do
    name            "This Event"
    description     "Shared"
    location        "City"
    capacity        10
    includes_food   true
    includes_drinks true
    starts_at       "2017/04/01 17:00"
    ends_at         "2017/04/01 18:00"

    price           { Faker::Commerce.price }
    user            { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
