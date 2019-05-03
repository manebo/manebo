FactoryBot.define do
  factory :task do
    sequence(:user_id) { |n| "#{n}"}
    sequence(:title) { |n| "test_title#{n}"}
    sequence(:description) { |n| "test_desc#{n}"}
    sequence(:comment) { |n| "test_comment#{n}"}
    timer_status { 0 }
  end
end
