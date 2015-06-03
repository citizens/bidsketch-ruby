module Bidsketch
  class Client < BidsketchObject
    class << self
      def all
        Bidsketch::API.get('/clients.json').map { |client| self.new(client) }
      end

      def find(id)
        response = Bidsketch::API.get("/clients/#{id}.json")
        if response
          self.new(response)
        end
      end
    end
  end
end