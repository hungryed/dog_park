require 'spec_helper'

describe Dog do
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many(:owners).through(:dogownerships) }
end
