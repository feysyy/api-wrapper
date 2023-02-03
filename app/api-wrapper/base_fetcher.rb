# class BaseFetcher
#   class << self
#     BASE_URL = "https://random-d.uk/api/v2".freeze

#     def request(endpoint)
#       connection = Faraday.new("#{BASE_URL}/#{endpoint}?type=gif")
#       request = connection.get
#       # response = JSON.parse(request.body)
#       response = OpenStruct.new(
#         url: JSON.parse(request.body)["url"]
#       )

#       # response['url']
#       response.url
#     end

    # BASE_URL_DOTA = "https://api.stratz.com/api/v1".freeze

    # def dota_request(endpoint)
    #   connection = Faraday.new("#{BASE_URL_DOTA}/#{endpoint}")
    #   request =  connection.get
    #   response = OpenStruct.new(
    #     url: JSON.parse(request.body)["additionalProp1"]
    #   )
    #   response.additionalProp1
    # end
#   end
# end