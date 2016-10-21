class Klass < ActiveRecord::Base
  belongs_to :klass
  has_many :builds
  has_many :skills
  has_many :skill_types
  has_many :paragons
end
