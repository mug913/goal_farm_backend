class Map < ApplicationRecord
  belongs_to :goal, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
