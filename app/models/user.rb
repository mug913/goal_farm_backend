class User < ApplicationRecord
    has_many :goals, dependent: :destroy
    has_many :days, dependent: :destroy

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
   # has_secure_password
end
