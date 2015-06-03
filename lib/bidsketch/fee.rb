module Bidsketch
  class Fee < BidsketchObject
    class << self
      def all
        Bidsketch::API.get('/fees.json').map { |fee| self.new(fee) }
      end

      def find(id)
        response = Bidsketch::API.get("/fees/#{id}.json")
        if response
          self.new(response)
        end
      end
    end
  end
end