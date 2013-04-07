class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true

  belongs_to :users
  belongs_to :project
  belongs_to :events
  
  has_many :votes, :as => :votable
  has_many :subcomments, :as => :subcommentable 

end

