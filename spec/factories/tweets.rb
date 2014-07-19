# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  text_body  :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  tweeted_at :datetime         not null
#  url        :string(255)      not null
#

FactoryGirl.define do
  factory :tweet do
    user_id 1
    text_body "Hello World"
    tweeted_at Time.now
    url "https://twitter.com/elonmusk/status/487279300895191041"
  end
end
