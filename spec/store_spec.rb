require('spec_helper')

describe(Store) do
  it{should have_and_belong_to_many(:shoes)}
end

describe(Store) do
  it('validates the presence of name') do
    test_store = Store.new({:name => ""})
    expect(test_store.save()).to(eq(false))
  end
  describe('#capitalize') do
    it('capitalizes the first letter of store name') do
      test_store = Store.new({:name => 'dicks'})
      expect(test_store.name().capitalize()).to(eq('Dicks'))
    end
  end
end
