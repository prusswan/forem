module Forem
  class Topic < ActiveRecord::Base
    attr_accessible :subject, :user_id, :posts_attributes

    belongs_to :user, :class_name => Forem::Engine.user_class.to_s
    has_many :posts, :order => "created_at ASC"
    accepts_nested_attributes_for :posts
  end
end
