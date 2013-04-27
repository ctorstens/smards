class Question < ActiveRecord::Base
  validates :description, :presence => true
end
