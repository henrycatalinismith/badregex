describe BadRegex do

  describe "match?" do
    it "matches pie" do
      expect(BadRegex.match?("pie")).to eq(true)
    end

    it "matches Larry Ellison" do
      expect(BadRegex.match?("Larry Ellison")).to eq(true)
    end
  end

  describe "valid?" do
    it "true for good regexes" do
      expect(BadRegex.valid?(/.*/)).to eq(true)
    end

    it "false for bad regexes" do
      expect(BadRegex.valid?(/^fish$/)).to eq(false)
    end
  end

  describe "strip_usernames" do
    it "strips usernames" do
      expect(BadRegex.strip_usernames("@BadRegex @SwiftOnSecurity /.*/")).to eq("/.*/")
    end
  end

  describe "should_retweet?" do
    it "true for good ones" do
      expect(BadRegex.should_retweet?("@BadRegex @SwiftOnSecurity /.*/")).to eq(true)
    end

    it "false for good ones" do
      expect(BadRegex.should_retweet?("@BadRegex @SwiftOnSecurity /^fish$/")).to eq(false)
    end
  end

end
