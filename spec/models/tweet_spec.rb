# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  user       :integer          not null
#  text_body  :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  tweeted_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Tweet, :type => :model do
  user = User.new(name: "Elon Musk")
  user.save!
  valid_tweet = Tweet.new(
  text_body: "This is a tweet",
  tweeted_at: Time.now,
  user_id: user.id)
  empty_tweet = Tweet.new(tweeted_at: Time.now)
  describe '#text_body' do
    it 'should raise error when no text body' do
      expect { empty_tweet.save! }.to raise_error
    end
    it 'should not raise error when valid tweet' do
      expect { valid_tweet.save! }.to_not raise_error
    end
    # it 'test'
  end

end
