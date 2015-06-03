module Bidsketch
  class Client
    class << self
      def all
        Bidsketch::API.get('/clients.json').map { |client| OpenStruct.new(client) }
      end

      def find(id)
        response = Bidsketch::API.get("/clients/#{id}.json")
        if response
          OpenStruct.new(response)
        end
      end
    end
  end
end