# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  url        :string(255)      not null
#



FactoryGirl.define do
  factory :user do
    name "Steve"
    url "https://twitter.com/elonmusk"
  end
end
