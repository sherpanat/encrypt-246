require_relative '../encrypt'

describe '#encrypt' do
  it "should return empty string when empty string passed" do
    actual = encrypt('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it "should return an encrypt sentence" do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end

  it "should return an encrypt sentence with punctuation" do
    actual = encrypt('THE QUICK BROWN, FOX JUMPS OVER THE LAZY DOG!')
    expected = 'QEB NRFZH YOLTK, CLU GRJMP LSBO QEB IXWV ALD!'
    expect(actual).to eq(expected)
  end

  it "should return an encrypt sentence with downcase letters" do
    actual = encrypt('the QUICK brown FOX JUMPS OVER THE LAZY DOG')
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end
end
