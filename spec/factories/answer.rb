require 'rails_helper'

FactoryBot.define do

  factory :answer do
    body FFaker::BaconIpsum.sentences
  end
end
