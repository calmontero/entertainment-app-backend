class Program < ApplicationRecord
    has_many :reviews
    has_one :rating
    has_one :genre
    has_one :category
end
