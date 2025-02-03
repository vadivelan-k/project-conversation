class Project < ApplicationRecord
  STATUSES = %w[draft open closed cancelled expired]

  has_many :comments, foreign_key: :project_id

  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES }
end
