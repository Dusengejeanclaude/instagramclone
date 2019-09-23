class User < ApplicationRecord
	has_one :profile
    has_many :posts
    has_many :favorites, dependent: :destroy
    validates :fullname, presence: true, length: {maximum: 40}
    validates :email, presence: true, uniqueness: true, length: {maximum: 200},format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    before_validation { email.downcase! }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
