require "gocd_api_client/version"

module GocdApiClient
  autoload 'Exceptions',      'gocd_api_client/exceptions'
  autoload 'Conn',            'gocd_api_client/conn'
  autoload 'RestClient',      'gocd_api_client/rest_client'

  class << self
    def connection
      @connection ||= Conn.new
    end

    def connect!
      yield connection if block_given?
      connection
    end
  end
end
