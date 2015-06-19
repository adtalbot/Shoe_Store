require('spec_helper')

describe(Shoe) do
  it{should have_and_belong_to_many(:stores)}
end

describe(Shoe) do
  it('validates the presence of name') do
    test_shoe = Shoe.new({:name => ""})
    expect(test_shoe.save()).to(eq(false))
  end
  describe('#capitalize') do
    it('capitalizes the first letter of shoe name') do
      test_shoe = Shoe.new({:name => 'nike'})
      expect(test_shoe.name().capitalize()).to(eq('Nike'))
    end
  end
end
