#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'
require './lib/bad_regex'

# remove this to send out tweets
debug_mode

# remove this to update the db
no_update

# remove this to get less output when running
verbose


replies do |tweet|
  puts tweet.text
  if BadRegex.should_retweet?(tweet.text)
    puts "Retweeting"
    retweet tweet
    puts ""
  end
end
