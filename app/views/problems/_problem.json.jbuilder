json.extract! problem, :id, :title, :description, :tags, :user_id, :solved, :created_at, :updated_at
json.url problem_url(problem, format: :json)
