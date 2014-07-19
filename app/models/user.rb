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

class User < ActiveRecord::Base
  validates :name, :url, presence: true
end
