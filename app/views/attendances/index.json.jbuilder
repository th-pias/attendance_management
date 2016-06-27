json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :message, :date, :intime, :outtime, :duration, :user_id
  json.url attendance_url(attendance, format: :json)
end
