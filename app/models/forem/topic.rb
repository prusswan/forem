module Forem
  class Topic < ActiveRecord::Base
    attr_accessible :subject, :user_id, :posts_attributes

    has_many :posts, :order => "created_at ASC"
    accepts_nested_attributes_for :posts
  end
end
