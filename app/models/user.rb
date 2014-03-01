class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  
  rails_admin do
    edit do
      field :email
      field :password
      field :password_confirmation
      field :tweets
    end
  end
end
