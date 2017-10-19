class MovieSessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :hall_id

  belongs_to :hall

  def start_time
    Time.at(object.start_time).utc.strftime("%B %d, %H:%M")
  end
end
