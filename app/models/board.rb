class Board < ApplicationRecord
    has_many :pin
    belongs_to :user
end
