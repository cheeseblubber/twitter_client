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

class Tweet < ActiveRecord::Base
  validates :text_body, :user_id, :url, presence: true
  belongs_to :user

  def self.exisiting_tweet?(tweeted_at)
    Tweet.find_by_tweeted_at(tweeted_at).nil?
  end
end
