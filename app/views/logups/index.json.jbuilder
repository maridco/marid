json.array!(@logups) do |logup|
  json.extract! logup, :id, :fullname, :email
  json.url logup_url(logup, format: :json)
end
