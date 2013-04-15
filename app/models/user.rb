class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable, :recoverable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :rememberable, :trackable, :validatable

  attr_accessible :name, :lastname, :email, :password, :password_confirmation, :remember_me
  
  has_many  :projects,  dependent: :destroy
#  has_many  :comments,  dependent: :destroy
#  votes     :votes,     dependent: :destroy
 
end
