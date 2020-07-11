class User < ApplicationRecord
    has_one :map
    has_many :goals, through: :maps
    has_many :days
end
