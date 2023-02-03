class FoxFetcher
  class << self 
   BASE_URL = "https://randomfox.ca".freeze

  def request(endpoint)
    connection = Faraday.new("#{BASE_URL}/#{endpoint}")
    request = connection.get
    response = OpenStruct.new(
      url: JSON.parse(request.body)["image"]
    )

    response.url
  end
 
  end
 
 end