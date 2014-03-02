class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable

  devise(
    :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable )

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role

  has_many :user_lures
  
  ROLES = [
    'admin',
    'fisherman'
  ]

  ROLES.each do |role|
    define_method "#{role.downcase.gsub(" ", "_")}?" do
     self.role == role
    end
  end

end
