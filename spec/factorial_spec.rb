# spec/factorial_spec.rb
require 'factorial.rb'

describe "recursive factorial" do
  it "returns 1 for factorial of 1" do
    expect(factorial_r(1)).to eq(1)
  end

  it "returns 2 for factorial of 2" do
    expect(factorial_r(2)).to eq(2)
  end


  it "returns 720 for factorial of 6" do
    expect(factorial_r(6)).to eq(720)
  end

  it "returns 120 for a factorial of 5" do
    expect(factorial_r(5)).to eq(120)
  end

  it "returns 6 for a factorial of 3" do
    expect(factorial_r(3)).to eq(6)
  end
end


describe "recursive factorial" do
  it "returns 1 for factorial of 1" do
    expect(factorial_i(1)).to eq(1)
  end

  it "returns 2 for factorial of 2" do
    expect(factorial_i(2)).to eq(2)
  end


  it "returns 720 for factorial of 6" do
    expect(factorial_i(6)).to eq(720)
  end

  it "returns 120 for a factorial of 5" do
    expect(factorial_i(5)).to eq(120)
  end

  it "returns 6 for a factorial of 3" do
    expect(factorial_i(3)).to eq(6)
  end
end