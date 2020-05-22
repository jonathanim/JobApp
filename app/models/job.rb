class Job < ApplicationRecord
  belongs_to :user

  has_many :job_applications, through :user
end
