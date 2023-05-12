class Solution < ApplicationRecord
  belongs_to :user
  belongs_to :problem
  has_many :votes
end
