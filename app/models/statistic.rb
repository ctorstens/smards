class Statistic < ActiveRecord::Base
  belongs_to :question

  validates :correct, :presence => true
end
