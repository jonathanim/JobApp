require 'rails_helper'
RSpec.describe Job, type: :model do
  subject { FactoryBot.create(:job)}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without position title" do
    subject.position=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a job_type" do
    subject.job_type = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a company name" do
    subject.company = nil
    expect(subject).to_not be_valid
  end
  it "is not valid with description with less than 10 characters long" do
    subject.description = nil
    expect(subject).to_not be_valid
    subject.description = "hello"
    expect(subject).to_not be_valid
    subject.description = "123"
    expect(subject).to_not be_valid
    subject.description = "123456789"
    expect(subject).to_not be_valid
    subject.description = "1234567890"
    expect(subject).to be_valid
    subject.description = "hello world"
    expect(subject).to be_valid
  end
  it "is not valid without a salary" do
    subject.salary = nil
    expect(subject).to_not be_valid
  end
  it "it is valid if bonus is true or false" do
    subject.bonus = true
    expect(subject).to be_valid
    subject.bonus = false
    expect(subject).to be_valid
  end
end
