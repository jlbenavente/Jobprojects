json.extract! joboffer, :id, :title, :description, :photo, :budget, :start_date, :end_date, :location_id, :skill_id, :user_id, :created_at, :updated_at
json.url joboffer_url(joboffer, format: :json)
