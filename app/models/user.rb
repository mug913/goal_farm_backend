class User < ApplicationRecord
    has_one :map
    has_many :goals, through: :map
    has_many :days

    has_secure_password
end
