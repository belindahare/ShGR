class User < ActiveRecord::Base
  has_many :lists, through: :grocers
  belongs_to :grocers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :email
  validates_uniqueness_of :email, :case_sensitive => false

  
  # ROLES = %w[admin supporter volunteer_organization]
  
  def role?(role)
    roles.include? role.to_s
  end
end
