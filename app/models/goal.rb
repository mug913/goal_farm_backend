class Goal < ApplicationRecord
    has_one :map, dependent: :destroy
    has_one :user, through: :map, dependent: :destroy
end
