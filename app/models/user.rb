class User < ApplicationRecord
    has_one :map, dependent: :destroy
    has_many :goals, through: :map, dependent: :destroy
    has_many :days, dependent: :destroy

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
    has_secure_password
end
