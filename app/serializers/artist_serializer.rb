class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :image_name, :website, :youtube,
             :itunes, :soundcloud, :facebook, :twitter, :instagram
end
