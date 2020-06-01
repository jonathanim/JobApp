class Job < ApplicationRecord
  belongs_to :user , optional: true


  has_many :job_applications
  has_many :users


  #validations
  validates :position, :job_type, :company, :description, :salary, :presence => true

  validates :position, :length => { :minimum => 2 }


  validates :description, :length => { :minimum => 10}

  validates :salary, :numericality => { :only_integer => true }

  validates :user_id, :presence => true

end
