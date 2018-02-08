require_relative "infinity_stone/version"
require "httparty"
# require 'pry'

module InfinityStone
  include HTTParty

  base_uri "gateway.marvel.com/v1/public"

    def self.characters(options={})
      get('/characters',query: options)
    end

    def self.character(id, options = {})
      get("/characters/#{id}",query: options)
    end

end
