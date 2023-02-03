class DogFetcher
  class << self 
    BASE_URL = "https://random.dog".freeze
    
    def request(endpoint)
      connection = Faraday.new("#{BASE_URL}/#{endpoint}")
      request = connection.get
      
      response = OpenStruct.new(
        url: JSON.parse(request.body)["url"]
      )

      response.url
    end

  end
end