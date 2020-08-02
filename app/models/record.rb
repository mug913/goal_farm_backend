class Record < ApplicationRecord
    belongs_to :goal, dependent: :destroy
end