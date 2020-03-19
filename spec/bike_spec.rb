require 'bike'
describe Bike do
  daisy = Bike.new
  it {expect(daisy).to respond_to :working?}
end
