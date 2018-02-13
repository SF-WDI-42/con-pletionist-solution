json.extract! conference, :id, :name, :location, :created_at, :updated_at
json.url conference_url(conference, format: :json)
json.talks conference.talks, :title, :speaker_name, :start_time, :end_time