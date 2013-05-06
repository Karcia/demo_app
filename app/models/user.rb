class User < ActiveRecord::Base
  attr_accessible :age, :description, :email, :name
  has_many :microposts
end

class User < ActiveRecord::Base
  validates_numericality_of :age,
    :greater_than_or_equal_to => 1,
    :message => "must be a non-negative number"
end