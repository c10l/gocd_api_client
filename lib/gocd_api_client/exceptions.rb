module GocdApiClient
  module Exceptions
    class InvalidCredentials < StandardError
    end

    class MissingURL < StandardError
    end
  end
end
