FAKE_GENDERS = ["Male", "Female"]
FAKE_TITLES = ["Mr.", "Mrs.", "Miss", "Ms.", "Dr.", "Prof.", "Rev.", "Capt.", "Sir", "Lady"]

FactoryBot.define do
  factory :student do
    transient do
      full_name { Faker::Name.name }
    end

    transient do
      name_parts { full_name.split }
    end

    title { FAKE_TITLES.sample }
    first_name { name_parts[0] }
    middle_name { name_parts[1..-2].join(" ") }
    last_name { name_parts[-1] }
    email { Faker::Internet.email }
    birth_date { Faker::Date.birthday(min_age: 18, max_age: 65) }
    gender { FAKE_GENDERS.sample }

    # Adding traits in case of validations
    trait :without_first_name do
      first_name { nil }
    end

    trait :without_last_name do
      last_name { nil }
    end

    trait :without_email do
      email { nil }
    end

    trait :without_birth_date do
      birth_date { nil }
    end

    trait :without_gender do
      gender { nil }
    end
  end
end
