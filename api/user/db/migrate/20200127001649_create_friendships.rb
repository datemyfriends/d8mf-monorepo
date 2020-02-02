class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships, id: :uuid do |t|
      t.uuid :user_id
      t.uuid :friend_id

      t.timestamps
    end
  end
end
