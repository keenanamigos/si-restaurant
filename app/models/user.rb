class User < ActiveRecord::Base
  before_save { email.downcase! }

  validates :name, presence:true, length: {maximum: 50}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}, presence: true, length: {maximum: 255}, uniqueness: {case_sensitive: false}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, password_length: 8..128
         
  has_many :restaurants
end
