class Project < ActiveRecord::Base
  attr_accessible :address, :idea, :problem, :solution, :zipcode

  has_many :comments, :as => :commentable
  acts_as_commontable

  acts_as_votable

end
