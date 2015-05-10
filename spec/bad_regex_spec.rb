describe "bad_regex" do

  it "matches pie" do
    all = BadRegex::patterns.all? { |p| p.match("pie") }
    expect(all).to eq(true)
  end

  it "matches Larry Ellison" do
    all = BadRegex::patterns.all? { |p| p.match("Larry Ellison") }
    expect(all).to eq(true)
  end

end
