class Post < ActiveRecord::Base
  attr_accessible :comment, :user_id
end
