require 'rest_client'
require 'json'

module Bidsketch
  class API
    BASE_URL = 'https://bidsketch.com/api/v1'

    class << self
      def get(path, options = {})
        url = api_url(path)
        if options[:params]
          url += "&#{querify(options[:params])}"
        end

        headers = { authorization: "Token token=#{ENV['BIDSKETCH_API_KEY']}" }
        normalize_response RestClient.get(url, headers)
      end

      
      private

      def normalize_response(response)
        JSON.parse(response)
      end

      def api_url(path)
        "#{BASE_URL}#{tokenize(path)}"
      end

      def querify(hash)
        hash.map { |k, v| "#{k}=#{v}".to_s }.join('&')
      end

      def tokenize(path)
        param_separator = path.include?('?') ? '&' : '?'
        path += "#{param_separator}token=#{Bidsketch.api_key}"
      end
    end
  end
end
