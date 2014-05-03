require 'spec_helper'

describe "Numeric Class" do
  it "#notzero?" do
    expect(0.notzero?).to eq false
    expect((0.0).notzero?).to eq false
    expect((0i).notzero?).to eq false
    expect((0/4r).notzero?).to eq false
    expect(3.notzero?).to eq true
    expect((3.0).notzero?).to eq true
    expect((3/4r).notzero?).to eq true
    expect(4i.notzero?).to eq true
  end
end
