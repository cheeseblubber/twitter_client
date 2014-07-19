class AddColumnTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :tweeted_at, :datetime, null: false
  end
end
