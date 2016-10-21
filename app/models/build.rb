class Build < ActiveRecord::Base
  belongs_to :user
  belongs_to :klass
  
  has_many :skills

  self.per_page = 10
end
