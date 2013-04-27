class Question < ActiveRecord::Base
  has_many :statistics
  belongs_to :card

  validates :description, :presence => true
end
