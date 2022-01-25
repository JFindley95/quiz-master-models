class Quiz < ApplicationRecord
 has_many :questions
 has_many :scorecards
end
