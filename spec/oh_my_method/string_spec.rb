require 'spec_helper'

describe "String Class" do
  it "#palindrome?" do
    expect("hello".palindrome?).to eq false
    expect("heeeh".palindrome?).to eq true
    expect("Heeeh".palindrome?).to eq false
    expect("ABCBA".palindrome?).to eq true
  end

  it "#middle_with?" do
    expect("hello".middle_with?("ell")).to eq true
    expect("hello".middle_with?("ello")).to eq false
    expect("hello".middle_with?("hel")).to eq false
    expect("ABABA".middle_with?("BAB")).to eq true
  end

  it "#sum_digit" do
    expect("11111".sum_digit).to eq 5
    expect("12321".sum_digit).to eq 9
    expect("123456789".sum_digit).to eq 45
  end

  it "#first" do
    expect("Hello".first).to eq "H"
    expect("".first).to eq nil
  end

  it "#last" do
    expect("Hello".last).to eq "o"
    expect("".last).to eq nil
  end

  it "#shuffle" do
    word = "Hello"
    expect(word.shuffle.chars.sort).to eq word.chars.sort
  end

  it "#include_lower?" do
    word = "Hello"
    expect(word.include_lower?).to eq true

    word = "HELLO"
    expect(word.include_lower?).to eq false

    word = ""
    expect(word.include_lower?).to eq false
  end
end
