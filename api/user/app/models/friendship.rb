class Friendship < ApplicationRecord
    after_create :create_inverse_relationship
    after_destroy :destroy_inverse_relationship
    
    belongs_to :user, :foreign_key => "user_id", :class_name => "User"
    belongs_to :friend, :foreign_key => "friend_id", :class_name => "User"
    private

    def create_inverse_relationship
      friend.friendships.create(friend: user) unless already_friended?
    end
  
    def destroy_inverse_relationship
      friendship = friend.friendships.find_by(friend: user)
      friendship.destroy if friendship
    end
    def already_friended?
        friend.friends.include?(user)
    end
end
