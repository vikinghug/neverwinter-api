FactoryGirl.define do
  factory :klass do
    name { 'Guardian Fighter' }
    initialize_with { Klass.find_or_create_by(name: name) }
  end
end
