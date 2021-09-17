class Program < ApplicationRecord
    belongs_to :category
    has_many :reviews
    belongs_to :genre
    belongs_to :rating
end
