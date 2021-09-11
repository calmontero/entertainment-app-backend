class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :cast, :image_url, :imdb_url, :category_id, :genre_id, :rating_id
  
end

