class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)

  validates(:name, :presence => true)

private

  define_method(:capitalize) do
    self.capitalize!
  end
end
