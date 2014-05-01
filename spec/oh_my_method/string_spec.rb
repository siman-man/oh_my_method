require 'spec_helper'

describe "String Class" do
  it "palindrome?" do
    expect("hello".palindrome?).to eq false
    expect("heeeh".palindrome?).to eq true
    expect("Heeeh".palindrome?).to eq false
    expect("ABCBA".palindrome?).to eq true
  end
end
