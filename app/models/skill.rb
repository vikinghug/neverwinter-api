class Skill < ActiveRecord::Base
  belongs_to :klass
  belongs_to :skill_type
  belongs_to :paragon
  belongs_to :build
end
