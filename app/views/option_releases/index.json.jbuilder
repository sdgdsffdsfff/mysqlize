json.array!(@option_releases) do |option_release|
  json.extract! option_release, :id, :option_id, :release_id, :deprecated, :introduced
  json.url option_release_url(option_release, format: :json)
end
