class Card < ActiveRecord::Base
  has_and_belongs_to_many :stacks
  has_many :questions
  belongs_to :user

  validates :answer, :presence => true
end
