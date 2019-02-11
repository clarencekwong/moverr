json.extract! job, :id, :title, :date, :status, :created_at, :updated_at
json.url job_url(job, format: :json)
