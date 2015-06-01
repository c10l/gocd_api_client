require 'rest-client'

module GocdApiClient
  class RestClient
    def initialize
      raise Exceptions::MissingURL if GocdApiClient.connection.url.nil?
      @conn = GocdApiClient.connect!
    end
  end
end
