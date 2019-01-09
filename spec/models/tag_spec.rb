require 'rails_helper'

RSpec.describe Tag, type: :model do

  # associations
  it { should have_many(:questions) }
end
