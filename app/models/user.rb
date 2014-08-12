class User < ActiveRecord::Base
  has_many :microposts
  validates :email, uniqueness: true
end
