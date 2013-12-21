class DogOwnership < ActiveRecord::Base
  belongs_to :owner,
    inverse_of: :dog_ownerships
  belongs_to :dog,
    inverse_of: :dog_ownerships
  validates_presence_of :owner
  validates_presence_of :dog
  validates_uniqueness_of :dog_id, scope: :owner_id
end
