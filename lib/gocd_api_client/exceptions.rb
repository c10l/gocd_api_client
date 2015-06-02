module GocdApiClient
  module Exceptions
    class InvalidCredentials < StandardError
      def initialize
        super("Credentials should be in the form { :username => 'user', :password => 'pwd' }")
      end
    end

    class MissingURL < StandardError
      def initialize
        super("URL missing from configuration. Use GocdApiClient.connect! { |api| api.url = 'http://example.com' }")
      end
    end
  end
end
