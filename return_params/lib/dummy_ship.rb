module DummyShip
  def self.ship_package(address, order)
    validate_address(address)
    Shipment.new(order)
  end

  def self.validate_address(address)
    ## Zipcode must be within a given range.
    unless (20170..20179).to_a.include?(address['zipcode'].to_i)
      raise "This order is outside our shipping zone."
    end
  end
end