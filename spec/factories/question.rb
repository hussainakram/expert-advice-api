require 'rails_helper'

FactoryBot.define do

  factory :question do
    sequence(:title) { |n| "#{FFaker::CheesyLingo.title} #{n}" }
    body FFaker::BaconIpsum.sentences
  end
end
