class PresentationEvent < ApplicationRecord
  has_many :evaluations, dependent: :destroy

  validates :title, :date, :description, :instructor_name, presence: true
end
