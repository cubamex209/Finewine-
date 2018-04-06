class Question < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :speaker 
end
