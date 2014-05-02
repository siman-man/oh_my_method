require 'spec_helper'

describe "Integer" do
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
end
