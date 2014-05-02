require 'spec_helper'

describe "Hash Class" do
  it "#to_object" do
    hash = { hoge: "hoge", "piyo" => "piyo", fuga: { one: 1 }}
    color = { red: 254, green: 177, blue: 100 }.to_obj
    obj = hash.to_obj
    expect(obj.hoge).to eq "hoge"
    expect(obj.piyo).to eq "piyo"
    expect(obj.fuga.one).to eq 1

    expect(color.red).to eq 254
    expect(color.green).to eq 177
    expect(color.blue).to eq 100

    obj.hoge = "hello"

    expect(obj.hoge).to eq "hello"
  end
end
