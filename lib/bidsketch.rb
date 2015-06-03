require "bidsketch/version"

module Bidsketch
  class << self
    def api_key
      @api_key
    end

    def api_key=(key)
      @api_key = key
    end
  end
end
