require 'rails_helper'

RSpec.describe Tweet, :type => :model do
  tweet = Tweet.new(full_text: "This is a tweet")
  describe '#full_text' do
    it 'should have text'
  end

end
