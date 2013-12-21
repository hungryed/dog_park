class Owner < ActiveRecord::Base
  has_many :dog_ownerships,
    inverse_of: :owner
  has_many :dogs,
    through: :dog_ownerships,
    inverse_of: :owners
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_email_format_of :email
end
