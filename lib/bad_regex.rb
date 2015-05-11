module BadRegex

  def self.valid? (pattern)
    if pattern.match("pie") && pattern.match("Larry Ellison")
      true
    else
      false
    end
  end

  def self.strip_usernames(string)
    string.gsub(/@[^ ]+/, '').strip
  end

  def self.should_retweet?(tweet_body)
    regex = self.strip_usernames(tweet_body).strip
    if regex.split(//).first == "/" && regex.split(//).last == "/"
      regex = regex[1..-2]
    end
    regex = Regexp.new(regex)
    self.valid?(regex)
  end

  def self.random_tweet
    characters = 'pieLarry Ellison'.split(//)
    "^[" + characters.shuffle.join + "]+$"
  end

end
