class User < ApplicationRecord
	has_many :questions
	has_many :topics
	has_many :answers
end
