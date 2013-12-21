require 'spec_helper'

describe Owner do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }
  it { should have_many :dogs }

  it { should have_valid(:first_name).when("Colin", "Krystle")}
  it { should_not have_valid(:first_name).when(nil,'')}

  it { should have_valid(:email).when('colin@aol.com', 'Krystle@hotmail.com')}
  it { should_not have_valid(:email).when(nil, '', 'ge@ge', 'dats mah jam')}
end
