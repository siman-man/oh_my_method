require 'spec_helper'

describe "Numeric Class" do
  it "#notzero?" do
    expect(0.notzero?).to eq false
    expect((0.0).notzero?).to eq false
    expect(Complex(0).notzero?).to eq false
    expect(Rational(0,4).notzero?).to eq false
    expect(3.notzero?).to eq true
    expect((3.0).notzero?).to eq true
    expect(Rational(3,4).notzero?).to eq true
    expect(Complex(0,4).notzero?).to eq true
  end
end
