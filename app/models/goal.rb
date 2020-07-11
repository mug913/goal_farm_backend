class Goal < ApplicationRecord
    has_one :map
    has_one :user, through: :maps
end
