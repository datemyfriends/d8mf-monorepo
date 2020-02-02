class User < ApplicationRecord
    has_many :friendships, :foreign_key => "user_id", dependent: :destroy,
    :class_name => "Friendship"

    has_many :friends, :through => :friendships, dependent: :destroy
    validates_presence_of :name, :sex, :interested_in
end
