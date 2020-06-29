class Job < ApplicationRecord
  belongs_to :user, optional: true
  has_many :users
  has_many :job_applications, :dependent => :destroy



  #validations
  validates :position, :job_type, :company, :description, :salary, :presence => true

  validates :position, :length => { :minimum => 2 }


  validates :description, :length => { :minimum => 10}





end
