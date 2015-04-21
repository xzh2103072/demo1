class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts
  has_many :weibos
end
