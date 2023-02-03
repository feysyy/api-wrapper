class DuckFetcher
 class << self 
  BASE_URL = "https://random-d.uk/api/v2".freeze

  def request(endpoint)
    connection = Faraday.new("#{BASE_URL}/#{endpoint}")
    request = connection.get
    # response = JSON.parse(request.body)
    response = OpenStruct.new(
      url: JSON.parse(request.body)["url"]
    )

    # response['url']
    response.url
  end
 end

end