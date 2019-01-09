require 'rails_helper'
require 'doorkeeper/orm/active_record/application'

FactoryBot.define do

  factory :access_token, class: Doorkeeper::AccessToken do
  end

  factory :user do
    email FFaker::Internet.email
    password "password"
    password_confirmation "password"
  end
end
