require 'spec_helper'

describe DogOwnership do
  before(:all) { FactoryGirl.create(:dog_ownership)}
  it { should belong_to :owner }
  it { should belong_to :dog }
  it { should have_valid(:owner).when(Owner.new) }
  it { should have_valid(:dog).when(Dog.new) }

  it { should validate_uniqueness_of(:dog_id).scoped_to(:owner_id)}
end
