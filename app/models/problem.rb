class Problem < ApplicationRecord
  belongs_to :user
  has_many :solutions
  has_many :votes, through: :solutions
end
