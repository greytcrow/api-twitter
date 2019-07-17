require 'twitter'
require 'dotenv'
require 'pry'
Dotenv.load('.env')

# puts ENV['TWITTER_API_SECRET']
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

client.update('Mon premier tweet en Ruby !!!!')