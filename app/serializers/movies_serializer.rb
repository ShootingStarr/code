class MoviesSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration, :description, :image

  def duration
    Time.at(object.duration).utc.strftime("%H:%M:%S")
  end
end
