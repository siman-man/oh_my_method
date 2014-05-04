require 'spec_helper'

describe "Array Class" do
  it "#deep_select" do
    langs = [ "Ruby", "R", "Python", "Java", "JavaScript" ]
    dup = langs.deep_select{|lang| lang.first == "R"}
    dup.first.upcase!

    expect(langs.first).to eq "Ruby"
    expect(dup.first).to eq "RUBY"

    dup = langs.deep_select
    expect(dup.class).to eq Enumerator
    expect(dup.to_a).to eq langs
  end
end
