class Owner < ActiveRecord::Base
  has_many :dogs
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_email_format_of :email
end