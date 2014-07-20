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


require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "validation Tests" do
    it 'should not raise error when valid user' do
      expect(build(:user)).to be_valid
    end
    it 'should raise error when no name' do
      expect(build(:user, name: nil)).not_to be_valid
    end
    it 'should raise error when no url' do
      expect(build(:user, url: nil)).not_to be_valid
    end
  end

  # describe "#recent_tweets" do
  #   it "should return twenty most recent tweets" do
  #     expect(user.recent_tweets).to match_array(expected_array)
  #   end
  # end

end
