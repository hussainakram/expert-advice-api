require 'rails_helper'

RSpec.describe Answer, type: :model do

  # associations
  it { should belong_to(:question) }
  it { should belong_to(:user) }
end
