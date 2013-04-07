class Event < ActiveRecord::Base

  belongs_to :projects

  has_many :comments, :as => :commentable
  has_many :votes
 
  # attr_accessible :title, :body

end
