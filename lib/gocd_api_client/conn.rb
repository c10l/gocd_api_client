module GocdApiClient
  class Conn
    attr_accessor :url
    attr_reader :credentials

    def initialize(url: nil, credentials: nil)
      self.credentials = credentials unless credentials.nil?
      @url = generate_url(url) unless url.nil?
    end

    def credentials=(hash)
      unless Set.new([:username, :password]) == Set.new(hash.keys)
        raise Exceptions::InvalidCredentials
      end
      @credentials = hash
    end

    private

      def generate_url(url)
        uri = URI(url)
        unless self.credentials.nil?
          uri.user = self.credentials[:username]
          uri.password = self.credentials[:password]
        end
        uri.to_s
      end
  end
end
