class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project

  validates :description, presence: true
  validates :project_status, presence: true, inclusion: { in: Project::STATUSES }
end
