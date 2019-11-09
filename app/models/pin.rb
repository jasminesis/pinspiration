class Pin < ApplicationRecord
    has_many :comment
    belongs_to :board
    belongs_to :user
    has_and_belongs_to_many :tags

end
