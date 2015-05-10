describe "bad_regex" do

  it "matches pie" do
    expect(BadRegex.match?("pie")).to eq(true)
  end

  it "matches Larry Ellison" do
    expect(BadRegex.match?("Larry Ellison")).to eq(true)
  end

end
