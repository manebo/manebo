class Task < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 500}
  validates :comment, presence: true, length: {maximum: 500}
  validates :timer_status, presence: true
end
