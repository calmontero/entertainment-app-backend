class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :description, :length, :director, :cast, :image_url, :imdb_url
  
  belongs_to :category
  belongs_to :genre
  belongs_to :rating
  has_many :reviews
  
end

