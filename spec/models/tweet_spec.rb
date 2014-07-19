
require 'rails_helper'

RSpec.describe Tweet, :type => :model do
  describe 'Tests Validations' do
    it 'should not raise error when valid tweet' do
      expect(build(:tweet)).to be_valid
    end
    it 'should raise error when no text body' do
      expect(build(:tweet, text_body: nil)).not_to be_valid
    end
    it 'should raise error when no user_id' do
      expect(build(:tweet, user_id: nil)).not_to be_valid
    end
    it 'should raise error when no url' do
      expect(build(:tweet, url: nil)).not_to be_valid
    end
  end

end
