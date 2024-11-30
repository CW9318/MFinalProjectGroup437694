class Evaluation < ApplicationRecord
  belongs_to :presentation_event

  validates :score, presence: true
  validates :comments, presence: true
  validates :student_name, presence: true
end
