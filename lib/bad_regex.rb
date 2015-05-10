module BadRegex

  @@patterns = [
    /(pie|Larry Ellison)/,
    /(Larry Ellison|pie)/,
    /.*i(.+)/,
    /.*/,
    /(p|Lar*y\s+Ell)i.*/,
    /[ a-yLE]{3,18}/,
    /([pl])([ easyrio]+)([en])/i,
    /[ a-yLE]{3,18}/,
    /\u0070*([ALL][day][ridge][racer][yesYES ]{3}..){0,13}[i](?:\x65|(?:[sister][mother][uncle]))/,
    /[pretty much anything really, fucking hell]+/,
    /^[pretty much anything really, holy shit]+$/i,
    /^[op ALIENSreplyIRL]+$/i,
    /^(pie|Larry Ellison)$/,
    /^(Larry Ellison|pie)$/,
  ]

  def self.patterns
    @@patterns
  end

  def self.match? (string)
    @@patterns.all? { |p| p.match("pie") && p.match("Larry Ellison") }
  end

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

end
