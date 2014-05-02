json.array!(@options) do |option|
  json.extract! option, :id, :name, :long_option, :short_option, :option_file, :short_option_can_be_strung, :description, :status, :tool_id
  json.url option_url(option, format: :json)
end
