class Statistic < ActiveRecord::Base
  validates :correct, :presence => true
end
