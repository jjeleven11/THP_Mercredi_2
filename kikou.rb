# coding: utf-8
require 'twitter'
require 'dotenv/load'
require 'pry'
# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["consumer_key"]
  config.consumer_secret     = ENV["consumer_secret"]
  config.access_token        = ENV["access_token"]
  config.access_token_secret = ENV["access_token_private"]
end
client.follow("gem")
client.follow(295218901)

binding.pry
