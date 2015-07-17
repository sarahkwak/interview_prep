require 'HTTParty'
response_array = []
url = "http://letsrevolutionizetesting.com/challenge.json"
while true
  response = HTTParty.get(url)
  p final= JSON.parse(response.to_s.gsub(/\=>/, ":"))
  url = final["follow"].gsub(/challenge/, "challenge.json")
end