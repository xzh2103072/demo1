class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_idq
  belongs_to:user
  validates :content, length: {maximum:140}
end
