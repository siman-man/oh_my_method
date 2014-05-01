require 'spec_helper'

describe "Integer" do
  it "plus?" do
    expect(-1.plus?).to eq false
    expect(0.plus?).to eq false
    expect(1.plus?).to eq true
    expect((1<<64).plus?).to eq true
  end

  it "minus?" do
    expect(-1.minus?).to eq true
    expect(0.minus?).to eq false
    expect(1.minus?).to eq false
    expect((1<<64).minus?).to eq false
  end
end
