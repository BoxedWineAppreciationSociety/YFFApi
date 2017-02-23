class PerformanceSerializer < ActiveModel::Serializer
  attributes :id, :artistId, :time

  def artistId
    object.artist_id
  end

  def time
    object.time&.to_i
  end
end
