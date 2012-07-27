class User < ActiveRecord::Base
  attr_accessible :login

  def to_s
    login
  end
end
