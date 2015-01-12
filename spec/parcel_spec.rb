require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("returns volume of package based on dimensions") do
      test_parcel = Parcel.new(1, 3, 5, 7)
      expect(test_parcel.volume()).to(eq(15))
    end
  end
  describe("#cost_to_ship") do
    it("returns the cost to ship a package based on the usps formula") do
      test_parcel = Parcel.new(1, 3, 5, 7)
      expect(test_parcel.cost_to_ship()).to(eq("$52"))
    end
  end
end
