module Forem
  class Post < ActiveRecord::Base
    attr_accessible :text, :topic_id, :user_id

    belongs_to :topic, :counter_cache => true
    belongs_to :user, :class_name => Forem::Engine.user_class.to_s
  end
end
