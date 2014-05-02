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
end
