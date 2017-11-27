class Quest < ApplicationRecord
	has_many :questions, dependent: :destroy
end
