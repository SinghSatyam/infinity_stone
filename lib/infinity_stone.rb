require_relative "infinity_stone/version"
require "httparty"
# require 'pry'

module InfinityStone
  include HTTParty

  base_uri "gateway.marvel.com/v1/public"

    # fetches lists of characters
    def self.characters(options={})
      # v1/public/characters
      get('/characters',query: options)
    end

end
