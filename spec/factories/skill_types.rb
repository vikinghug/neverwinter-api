FactoryGirl.define do
  factory :skill_type do
    name "name"
    initialize_with { SkillType.find_or_create_by(name: name) }
  end
end
