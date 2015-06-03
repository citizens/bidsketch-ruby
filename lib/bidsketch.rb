require "bidsketch/version"
require "bidsketch/api"
require "bidsketch/bidsketch_object"
require "bidsketch/client"
require "bidsketch/fee"
require "bidsketch/proposal"
require "bidsketch/section"
require "bidsketch/template"

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
