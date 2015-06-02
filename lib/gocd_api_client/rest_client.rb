require 'rest-client'

module GocdApiClient
  class RestClient
    def initialize
      @conn = GocdApiClient.connect!
    end
  end
end
