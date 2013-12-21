class Dog < ActiveRecord::Base
  validates_presence_of :name
  has_many :owners,
    through: :dogownership
end
