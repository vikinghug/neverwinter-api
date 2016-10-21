FactoryGirl.define do
  factory :paragon do
    name "name"
    initialize_with { Paragon.find_or_create_by(name: name) }
  end
end
