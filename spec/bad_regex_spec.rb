describe BadRegex do

  describe "valid?" do
    it "returns true for good regexes" do
      expect(BadRegex.valid?(/.*/)).to eq(true)
    end

    it "returns true for good regexes" do
      expect(BadRegex.valid?(/(?<!T)[aylor ]*(?!Swift)[ On Especially \@BadRegEx]+/i)).to eq(true)
    end

    it "returns true for good regexes" do
      expect(BadRegex.valid?(/[Lp]((?<!L)ie|(?<!p)arry)(((?<=y)(\sEllison))|[^Ellison]*)/)).to eq(true)
    end

    it "returns false for bad regexes" do
      expect(BadRegex.valid?(/^fish$/)).to eq(false)
    end
  end

  describe "strip_usernames" do
    it "strips usernames" do
      expect(BadRegex.strip_usernames("@BadRegex @SwiftOnSecurity /.*/")).to eq("/.*/")
    end
  end

  describe "should_retweet?" do
    it "returns true for good tweets" do
      expect(BadRegex.should_retweet?("@BadRegex @SwiftOnSecurity /.*/")).to eq(true)
    end

    it "copes with Twitter mangling < signs" do
      expect(BadRegex.should_retweet?("@BadRegEx [Lp]((?&lt;!L)ie|(?&lt;!p)arry)(((?&lt;=y)(\sEllison))|[^Ellison]*)")).to eq(true)
    end

    it "returns false for bad tweets" do
      expect(BadRegex.should_retweet?("@BadRegex @SwiftOnSecurity /^fish$/")).to eq(false)
    end
  end

end
