require 'rails_helper'

RSpec.describe Task, type: :model do

  before do
    @task = build(:task)
  end

  it "is invalid without user_id" do
    @task.user_id = nil
    expect(@task.valid?).to eq(false)
    expect(@task.save).to eq(false)
  end

  it "is invalid when title is nil" do
    @task.title = nil
    expect(@task.valid?).to eq(false)
    expect(@task.save).to eq(false)
  end

  it "is invalid when title is blank" do
    @task.title = ''
    expect(@task.valid?).to eq(false)
    expect(@task.save).to eq(false)
  end

  it "is invalid when title is whitespaces" do
    @task.title = '   '
    expect(@task.valid?).to eq(false)
    expect(@task.save).to eq(false)
  end

  it "is valid when title is up to 50 chars" do
    @task.title = 'a' * 50
    expect(@task.valid?).to eq(true)
    expect(@task.save).to eq(true)
  end

  it "is invalid when title is longer than 50 chars" do
    @task.title = 'a' * 51
    expect(@task.valid?).to eq(false)
    expect(@task.save).to eq(false)
  end

  it "is valid when description is up to 500 chars" do
    @task.description = 'a' * 500
    expect(@task.valid?).to eq(true)
    expect(@task.save).to eq(true)
  end

  it "is invalid when description is longer than 500 chars" do
    @task.description = 'a' * 501
    expect(@task.valid?).to eq(false)
    expect(@task.save).to eq(false)
  end

  it "is valid when comment is up to 500 chars" do
    @task.comment = 'a' * 500
    expect(@task.valid?).to eq(true)
    expect(@task.save).to eq(true)
  end

  it "is invalid when comment is longer than 500 chars" do
    @task.comment = 'a' * 501
    expect(@task.valid?).to eq(false)
    expect(@task.save).to eq(false)
  end

  it "is invalid without timer_status" do
    @task.timer_status = nil
    expect(@task.valid?).to eq(false)
    expect(@task.save).to eq(false)
  end

end
