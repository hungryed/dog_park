class Dog < ActiveRecord::Base
  has_many :dog_ownerships,
    inverse_of: :dog
  has_many :owners,
    through: :dog_ownerships,
    inverse_of: :dogs
  validates_presence_of :name

end
