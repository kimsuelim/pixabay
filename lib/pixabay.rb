require 'pixabay/config'
require 'pixabay/version'

require 'httparty'

module Pixabay
  extend Config

  def self.new
    Pixabay::Client.new(key: key, timeout: 10)
  end

  class Client
    include HTTParty
    base_uri "https://pixabay.com/api"

    options = {
      response_group: "image_details", id: nil, q: nil, lang: "en",
      image_type: "all", orientation: "all", category: nil, min_width: 0,
      min_height: 0, editors_choice: false, safesearch: false,
      order: "popular", page: 1, per_page: 20, callback: nil, pretty: false

    }

    def initialize(key: nil, timeout: 10)
      @key = key
      @timeout = timeout
    end

    def photos(**options)
      options = {
        query: {
          key: @key
        }.merge(options)
      }

      self.class.get("", options)
    end
  end
end
