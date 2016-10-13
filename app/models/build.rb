class Build < ActiveRecord::Base
  belongs_to :user

  has_one :klass
end
