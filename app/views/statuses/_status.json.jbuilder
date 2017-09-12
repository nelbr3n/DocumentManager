json.extract! status, :id, :title, :department_id, :created_at, :updated_at
json.url status_url(status, format: :json)