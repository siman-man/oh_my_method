require 'spec_helper'

describe "Integer Class" do
  it "#plus?" do
    expect(-1.plus?).to eq false
    expect(0.plus?).to eq false
    expect(1.plus?).to eq true
    expect((1<<64).plus?).to eq true
  end

  it "#minus?" do
    expect(-1.minus?).to eq true
    expect(0.minus?).to eq false
    expect(1.minus?).to eq false
    expect((1<<64).minus?).to eq false
  end

  it "#factorial" do
    expect(0.factorial).to eq 1
    expect(3.factorial).to eq 6
    expect(10.factorial).to eq 3628800
  end

  it "#combination" do
    expect(4.combination(1)).to eq 4
    expect(4.combination(0)).to eq 1
    expect(10.combination(5)).to eq 252
  end

  it "#permutation" do
    expect(3.permutation(0)).to eq 1
    expect(3.permutation(2)).to eq 6
    expect(20.permutation(5)).to eq 1860480
  end
end
