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
  ]

  def self.patterns
    @@patterns
  end

end
