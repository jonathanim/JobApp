class Job < ApplicationRecord
  belongs_to :user
  belongs_to :job_application

  has_many :job_applications



  #validations
  validates :position, :job_type, :company, :description, :salary, :presence => true

  validates :position, :length => { :minimum => 2 }


  validates :description, :length => { :minimum => 10}

  validates :salary, :numericality => { :only_integer => true }

end
