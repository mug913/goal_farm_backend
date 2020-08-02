class Goal < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :records, dependent: :destroy
end
