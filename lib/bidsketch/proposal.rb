module Bidsketch
  class Proposal < BidsketchObject
    class << self
      def all
        Bidsketch::API.get('/proposals.json').map { |proposal| self.new(proposal) }
      end

      def find(id)
        response = Bidsketch::API.get("/proposals/#{id}.json")
        if response
          self.new(response)
        end
      end
    end
  end
end