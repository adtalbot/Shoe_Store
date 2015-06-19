require('bundler')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @shoes = Shoe.all()
  @stores = Store.all()
  erb(:index)
end

get('/shoes') do
  @shoes = Shoe.all()
  erb(:shoes)
end

get('/stores') do
  @stores = Store.all()
  erb(:stores)
end

post('/shoes') do
  name = params.fetch('name')
  shoe = Shoe.new({:name => name, :id => nil})
  shoe.save()
  @shoes = Shoe.all()
  erb(:shoes)
end

post('/stores') do
  name = params.fetch('name')
  store = Store.new({:name => name, :id => nil})
  store.save()
  @stores = Store.all()
  erb(:stores)
end

get('/shoes/:id') do
  @shoe = Shoe.find(params.fetch('id').to_i())
  @stores = Store.all()
  erb(:shoe_info)
end

get('/stores/:id') do
  @store = Store.find(params.fetch('id').to_i())
  @shoes = Shoe.all()
  erb(:store_info)
end
