require "bidsketch/version"
require "bidsketch/api"
require "bidsketch/client"

module Bidsketch
  class << self
    def api_key
      @api_key || ENV['BIDSKETCH_API_KEY']
    end

    def api_key=(key)
      @api_key = key
    end
  end
end
