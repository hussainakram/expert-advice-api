require 'rails_helper'

RSpec.describe Question, type: :model do

  # validations
  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }

  # associations
  it { should belong_to(:user) }
  it { should have_many(:answers) }
  it { should have_many(:tags) }
end
