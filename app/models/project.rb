class Project < ActiveRecord::Base
  attr_accessible :address, :idea, :problem, :solution, :zipcode, :user_id
  
  belongs_to :user

  validates :idea, presence: true

  default_scope order: 'projects.created_at DESC'
end