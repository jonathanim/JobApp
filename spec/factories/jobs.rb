
require 'faker'
FactoryBot.define do
  factory :job do |f|
    f.position {Faker::Job.title}
    f.job_type {Faker::Job.employment_type}
    f.company {Faker::Company.name}
    f.description {Faker::Lorem.sentence(word_count: 10)}
    f.salary  { Faker::Number.number(digits: 10) }
    f.bonus  {Faker::Boolean.boolean }
    f.user_id {Faker::Number.between(1,10)}
  end
end
