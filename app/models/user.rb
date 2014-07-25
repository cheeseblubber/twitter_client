# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  url        :string(255)      not null

require 'twitter'
class User < ActiveRecord::Base
  validates :name, :url, presence: true
  has_many :tweets
  #build test
  #maybe rename twitter_handle to name
  def self.recent_tweets(twitter_handle)
    raw_tweets = self.twitter_client.user_timeline(twitter_handle)
    # refactor to own method
    raw_tweets.map do |tweet|
      parse_tweet(tweet)
    end
  end


  # def save_new_tweets
  #   tweets.each do |unparsed_tweet|
  #     unless Tweet.exisiting_tweet?(unparsed_tweet.created_at)
  #       Tweet.create(
  #       user_id:
  #       )
  #     end
  #   end
  # end

  def self.parse_tweet(tweet)
    url = tweet.url.to_s
    text = tweet.full_text
    tweeted_at = tweet.created_at
    Tweet.new(url: url, text_body: text, tweeted_at: tweeted_at)
  end

  def self.mutual_follows(username_one, username_two)
    
  end

  private

  def self.twitter_client
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["twitter_api_key"]
      config.consumer_secret     = ENV["twitter_api_secret"]
      config.access_token        = ENV["twitter_access_token"]
      config.access_token_secret = ENV["twitter_access_secret"]
    end
  end
end
