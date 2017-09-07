json.extract! release_validation, :id, :request_id, :aasm_state, :scheduled_at, :created_at, :updated_at
json.url release_validation_url(release_validation, format: :json)
