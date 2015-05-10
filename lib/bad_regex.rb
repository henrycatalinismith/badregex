module BadRegex

  @@patterns = [
    /(pie|Larry Ellison)/,
    /(Larry Ellison|pie)/,
    /.*i(.+)/,
    /.*/,
    /(p|Lar*y\s+Ell)i.*/,
    /[ a-yLE]{3,18}/,
  ]

  def self.patterns
    @@patterns
  end

end
