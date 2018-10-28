class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: :true, uniqueness: { case_sensitive: false }

   
  def self.find_for_database_authentication warden_conditions
    conditions = warden_conditions.dup
    username = conditions.delete(:username)
    # User.where(["username = ?", username]).first
    
    User.first
  end

end
