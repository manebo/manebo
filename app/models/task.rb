class Task < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true, length: {maximum: 20}
  validates :description, presence: true, length: {maximum: 300}
  validates :comment, presence: true, length: {maximum: 100}
  validates :timer_status, presence: true
end
