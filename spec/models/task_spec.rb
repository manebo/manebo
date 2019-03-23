require 'rails_helper'

RSpec.describe Task, type: :model do

  it "is invalid without user_id" do
    task = Task.new(user_id: nil)
    task.valid?
    expect(task.errors[:user_id]).to include("can't be blank")
  end

  it "is invalid when title is nil" do
    task = Task.new(title: nil)
    task.valid?
    expect(task.errors[:title]).to include("can't be blank")
  end

  it "is invalid when title is blank" do
    task = Task.new(title: "")
    task.valid?
    expect(task.errors[:title]).to include("can't be blank")
  end

  it "is invalid when title is whitespaces" do
    task = Task.new(title: "   ")
    task.valid?
    expect(task.errors[:title]).to include("can't be blank")
  end

  it "is invalid when title is longer than 50" do
    task = Task.new(title: "a" * 51)
    task.valid?
    expect(task.errors[:title]).to include("is too long (maximum is 50 characters)")
  end

  it "is invalid when description is longer than 500" do
    task = Task.new(description: "a" * 501)
    task.valid?
    expect(task.errors[:description]).to include("is too long (maximum is 500 characters)")
  end

  it "is invalid when comment is longer than 500" do
    task = Task.new(comment: "a" * 501)
    task.valid?
    expect(task.errors[:comment]).to include("is too long (maximum is 500 characters)")
  end

  it "is invalid without timer_status" do
    task = Task.new(timer_status: nil)
    task.valid?
    expect(task.errors[:timer_status]).to include("can't be blank")
  end

end
