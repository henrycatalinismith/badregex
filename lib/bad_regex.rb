module BadRegex

  def self.valid? (pattern)
    if pattern.match("pie") && pattern.match("Larry Ellison")
      true
    else
      false
    end
  end

  def self.strip_usernames(string)
    string.gsub(/@[A-Za-z0-9_ ]+/, '').strip
  end

  def self.should_retweet?(tweet_body)
    regex = self.strip_usernames(tweet_body).strip
    regex = regex.gsub('&lt;', '<')
    if regex.split(//).first == "/" && regex.split(//).last == "/"
      regex = regex[1..-2]
    end
    regex = Regexp.new(regex)
    self.valid?(regex)
  end

end
