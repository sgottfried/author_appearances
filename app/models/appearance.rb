class Appearance
  attr_reader :name
  attr_reader :street_address_1
  attr_reader :street_address_2
  attr_reader :city
  attr_reader :state
  attr_reader :zipcode

  def initialize(name, street_address_1, street_address_2=nil, city, state, zipcode)
    @name = name
    @street_address_1 = street_address_1
    @street_address_2 = street_address_2
    @city = city
    @state = state
    @zipcode = zipcode
  end

  def city_state_and_zipcode
    "#{@city}, #{@state} #{@zipcode}"
  end
end
