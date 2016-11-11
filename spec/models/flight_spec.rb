require 'rails_helper'

RSpec.describe Flight do


  it "is valid" do
    expect(build(:flight)).to be_valid
  end

  context "valid associations" do

    before :each do
      @flight = create(:flight)
    end

    it "is flying from nyc" do
      expect(@flight.from.code).to eq("NYC")
    end
    it "is arriving to sfo" do
      expect(@flight.to.code).to eq("SFO")
    end
  end
end
