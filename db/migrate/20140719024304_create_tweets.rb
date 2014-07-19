class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user, null: false
      t.string :text_body
      t.timestamps
    end

    add_index :tweets, :user
  end
end
