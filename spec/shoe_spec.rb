require('spec_helper')

describe(Shoe) do
  it{should have_and_belong_to_many(:stores)}
end

describe(Shoe) do
  it('validates the presence of name') do
    test_shoe = Shoe.new({:name => ""})
    expect(test_shoe.save()).to(eq(false))
  end
end
