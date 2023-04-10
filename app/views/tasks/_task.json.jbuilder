json.extract! task, :id, :title, :description, :is_done, :due_at, :deleted_at, :created_at, :updated_at
json.url task_url(task, format: :json)
