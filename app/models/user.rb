class User < ActiveRecord::Base
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true
  validates :user_name, :presence => true
  validates :password_hash, :presence => true
end
