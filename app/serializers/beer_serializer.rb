class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :alcohol_lvl, :country, :yr_made
end
