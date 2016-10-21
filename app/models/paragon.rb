class Paragon < ActiveRecord::Base
  belongs_to :klass
  has_many :skills
end
