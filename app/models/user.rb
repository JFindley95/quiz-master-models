class User < ApplicationRecord
  belongs_to :school
  has_many :scorecards
end
