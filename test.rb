#!/usr/bin/env ruby

require "./lib/bad_regex"

tweet = BadRegex.random_tweet
puts BadRegex.valid? Regexp.new(tweet)
