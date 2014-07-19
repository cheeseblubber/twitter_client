

class Tweet < ActiveRecord::Base
  validates :text_body, :user_id, :url, presence: true
end
