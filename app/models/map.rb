class Map < ApplicationRecord
  belongs_to :goals
  belongs_to :users
end
