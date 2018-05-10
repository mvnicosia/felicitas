class Game < ApplicationRecord
  validates :game_type, presence: true
  # WARNING: any strings passed that are not interpreted as false will be true
  validates :joinable, inclusion: { in: [true, false], message: "must be true or false" }
end
