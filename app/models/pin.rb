class Pin < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :board
    belongs_to :user
    has_and_belongs_to_many :tags

end
