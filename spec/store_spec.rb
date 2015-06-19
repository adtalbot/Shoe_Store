require('spec_helper')

describe(Store) do
  it{should have_and_belong_to_many(:shoes)}
end

describe(Store) do
  it('validates the presence of name') do
    test_store = Store.new({:name => ""})
    expect(test_store.save()).to(eq(false))
  end
end
