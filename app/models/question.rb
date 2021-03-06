class Question < ApplicationRecord
	belongs_to :level
	has_many :answers, dependent: :destroy
	accepts_nested_attributes_for :answers, allow_destroy: true
	validates :content, presence: true
end
