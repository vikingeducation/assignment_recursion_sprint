# spec/palindrome_spec.rb
require 'palindrome'

describe "recursive palindrome" do
  it "returns true for palindrome" do
    expect(palindrome_r("dsfcfsd")).to be true
  end

  it "returns false for a str that is not a palindrome" do
    expect(palindrome_r("dsfcfsdefg")).to be false
  end

  it "returns true for an empty string" do
    expect(palindrome_r("")).to be true
  end

  it "returns true for a string of length 1" do
    expect(palindrome_r("")).to be true
  end
end


describe "iterative palindrome" do
  it "returns true for palindrome" do
    expect(palindrome_i("dsfcfsd")).to be true
  end

  it "returns false for a str that is not a palindrome" do
    expect(palindrome_i("dsfcfsdefg")).to be false
  end

  it "returns true for an empty string" do
    expect(palindrome_i("")).to be true
  end

  it "returns true for a string of length 1" do
    expect(palindrome_i("")).to be true
  end
end