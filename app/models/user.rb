class User < ApplicationRecord
    has_one :map, dependent: :destroy
    has_many :goals, through: :map, dependent: :destroy
    has_many :days, dependent: :destroy

    has_secure_password
end
