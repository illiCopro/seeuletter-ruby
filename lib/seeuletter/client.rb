require "seeuletter/resources/letter"
require 'seeuletter/resources/letter_price'

module Seeuletter
  class Client

    attr_reader :config

    def initialize(config = nil)
      if config.nil? || config[:api_key].nil?
        raise ArgumentError.new(":api_key is a required argument to initialize Seeuletter")
      end

      @config = config
    end

    def letters
      Seeuletter::Resources::Letter.new(config)
    end

    def letter_price
      Seeuletter::Resources::LetterPrice.new(config)
    end
  end
end
