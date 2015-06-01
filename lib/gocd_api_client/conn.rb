module GocdApiClient
  class Conn
    attr_accessor :url
    attr_reader :credentials

    def initialize(url: nil, credentials: nil)
      @url = url
      self.credentials = credentials unless credentials.nil?
    end

    def credentials=(hash)
      unless Set.new([:username, :password]) == Set.new(hash.keys)
        raise Exceptions::InvalidCredentials
      end
      @credentials = hash
    end
  end
end
