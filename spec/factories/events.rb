FactoryGirl.define do
  factory :event do
    name            "This Event"
    description     "Shared"
    location        "City"
    capacity        10
    includes_food   true
    includes_drinks true
    starts_at       { Faker::Time.between(DateTime.now - 2, DateTime.now - 1) }
    ends_at         { Faker::Time.between(DateTime.now - 1, DateTime.now)}

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
