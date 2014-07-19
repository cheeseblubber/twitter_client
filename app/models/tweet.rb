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

class Tweet < ActiveRecord::Base

  validates :text_body, :user_id, presence: true

end
