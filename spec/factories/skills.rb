FactoryGirl.define do
  factory :skill do
    name { "skill name" }
    points { 0 }
    row { 0 }
    slot { 0 }
    association :skill_type
    association :paragon
    association :klass

  end
end
