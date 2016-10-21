FactoryGirl.define do
  factory :build do
    name { 'build name' }
    association :klass
  end
end
