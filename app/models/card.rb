class Card < ActiveRecord::Base
  has_and_belongs_to_many :stacks

  validates :answer, :presence => true
end
