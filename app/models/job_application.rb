class JobApplication < ApplicationRecord
  belongs_to :job
  belongs_to :user

  has_one_attached :resume

  #validations

  validates :name, :presence => true
  validates :other, :length => { :is => 5 }, :allow_blank => true
end
