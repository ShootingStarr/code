class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration, :description, :image

  has_many :movie_sessions
  has_many :halls

  def duration
    Time.at(object.duration).utc.strftime("%H:%M:%S")
  end

  def movie_sessions
    object.movie_sessions.where("start_time >= ?", Time.zone.now)
  end
end
