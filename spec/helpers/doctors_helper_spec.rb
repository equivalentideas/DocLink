require 'rails_helper'

describe DoctorsHelper do
  describe "#distance_with_unit" do
    it { expect(helper.distance_with_unit(2)).to eq "2 km" }
    it { expect(helper.distance_with_unit(3)).to eq "3 km" }
    it { expect(helper.distance_with_unit(3.4)).to eq "3.4 km" }
    it { expect(helper.distance_with_unit(0.5)).to eq "500 m" }
    it { expect(helper.distance_with_unit(0.02)).to eq "20 m" }
  end

  describe "#display_address" do
    it "strips “Australia” from the end" do
      expect(helper.display_address("5 King st, Newtown, Australia")).
        to eq "5 King st, Newtown"
    end

    it "strips the state from the end" do
      expect(helper.display_address("5 King st, Newtown, NSW")).
        to eq "5 King st, Newtown"
    end

    it "strips the state and “Australia” from the end" do
      expect(helper.display_address("5 King st, Newtown, NSW, Australia")).
        to eq "5 King st, Newtown"
    end

    it "doesn't remove “Australia” when it’s not at the end" do
      expect(helper.display_address("32 Australia st, Newtown")).
        to eq "32 Australia st, Newtown"
    end
  end
end

