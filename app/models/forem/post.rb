module Forem
  class Post < ActiveRecord::Base
    attr_accessible :text, :topic_id, :user_id

    belongs_to :topic, :counter_cache => true
  end
end
