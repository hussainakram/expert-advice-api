require 'rails_helper'

RSpec.describe User, type: :model do

  # validations
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should allow_value("user@example.com").for(:email) }
  it { should_not allow_value("not-an-email").for(:email) }
  it { should validate_uniqueness_of(:email) }

  # associations
  it { should have_many(:accounts) }
  it { should have_many(:user_account_accesses) }
  it { should have_many(:questions) }
  it { should have_many(:answers) }
end
