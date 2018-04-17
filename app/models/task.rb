class Task < ApplicationRecord
  has_many :comments, as: :commentable , dependent: :destroy
  validates :task_name, :user_name, presence: true
end
