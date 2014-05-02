json.array!(@releases) do |release|
  json.extract! release, :id, :major_version, :minor_version, :build_release, :edition, :is_latest, :tool_id
  json.url release_url(release, format: :json)
end
