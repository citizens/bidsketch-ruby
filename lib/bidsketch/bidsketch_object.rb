require 'ostruct'

module Bidsketch
  class BidsketchObject < OpenStruct
    class << self
      def all
        Bidsketch::API.get("#{root_path}.json").map { |object| self.new(object) }
      end

      def find(id)
        response = Bidsketch::API.get("#{root_path}/#{id}.json")
        self.new(response)
      end

      def root_path
        class_name = self.to_s.gsub(/^.*::/, '').downcase
        "/#{class_name}s"
      end
    end
  end
end