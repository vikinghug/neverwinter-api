class Build < ActiveRecord::Base
  belongs_to :user
  belongs_to :klass

  self.per_page = 10
end
