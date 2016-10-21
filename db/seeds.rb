# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed_file = Rails.root.join('db', 'seeds', 'mod10', 'guardian_fighter.yml')
klass = YAML::load_file(seed_file)

klass['skills'].each do |s|
  s['klass'] = Klass.find_or_create_by(name: klass['name'])
  s['skill_type'] = SkillType.find_or_create_by(name: s['skill_type'])
  s.delete('ranks') if s['ranks']

  s['paragon'] = Paragon.find_or_create_by(name: s['paragon']) if s['paragon']
  Skill.find_or_create_by(s)
end
