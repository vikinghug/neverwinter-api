# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
klasses = [
  {name: 'Great Weapon Fighter'},
  {name: 'Guardian Fighter'},
  {name: 'Devoted Cleric'},
  {name: 'Scourge Warlock'},
  {name: 'Control Wizard'},
  {name: 'Trickster Rogue'},
  {name: 'Hunter Ranger'},
  {name: 'Oathbound Paladin'},
]

klasses.each do |k|
  Klass.find_or_create_by(k)
end
