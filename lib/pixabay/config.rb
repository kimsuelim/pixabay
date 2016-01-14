module Pixabay
  module Config
    # pixabay client options
    OPTION_KEYS = [
      :api_key,
      :timeout,
    ]

    attr_accessor *OPTION_KEYS

    def configure
      yield self
      self
    end

    def options
      options = {}
      OPTION_KEYS.each{ |key| options[key] = send(key) }
      options
    end
  end
end
