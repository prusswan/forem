module Forem
  class Topic < ActiveRecord::Base
    attr_accessible :subject, :user, :posts_attributes

    belongs_to :user, :class_name => Forem::Engine.user_class.to_s
    has_many :posts, :order => "created_at ASC"
    accepts_nested_attributes_for :posts
    has_one :last_post, :class_name => "Forem::Post", :order => "created_at DESC"

    before_save :set_post_user

    private
      def set_post_user
        self.posts.first.user = self.user
      end
  end
end
