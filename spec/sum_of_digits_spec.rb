# spec/sumdig_spec.rb
require 'sum_of_digits'

describe "recursive sumdig" do
  it "returns 7 for 304" do
    expect(sumdig_r(304)).to eq(7)
  end

  it "returns 8 for 300005" do
    expect(sumdig_r(300005)).to eq(8)
  end


  it "returns 4 for 4 which is 1 dig" do
    expect(sumdig_r(4)).to eq(4)
  end

  it "returns 11 for a 2 digit number 56 with no zeros" do
    expect(sumdig_r(56)).to eq(11)
  end

  it "returns zero for 0" do
    expect(sumdig_r(0)).to eq(0)
  end
end


describe "iterative sumdig" do
it "returns 7 for 304" do
    expect(sumdig_i(304)).to eq(7)
  end

  it "returns 8 for 300005" do
    expect(sumdig_i(300005)).to eq(8)
  end


  it "returns 4 for 4 which is 1 dig" do
    expect(sumdig_i(4)).to eq(4)
  end

  it "returns 11 for a 2 digit number 56 with no zeros" do
    expect(sumdig_i(56)).to eq(11)
  end

  it "returns zero for 0" do
    expect(sumdig_i(0)).to eq(0)
  end
end