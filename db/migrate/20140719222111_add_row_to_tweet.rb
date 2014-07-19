class AddRowToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :url, :string, null: false
    add_column :users, :url, :string, null: false
  end
end
