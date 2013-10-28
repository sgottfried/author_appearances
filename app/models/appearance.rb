class Appearance
  attr_reader :name
  attr_reader :street_address_1
  attr_reader :street_address_2
  attr_reader :city
  attr_reader :state

  def initialize(name, street_address_1, street_address_2=nil, city, state)
    @name = name
    @street_address_1 = street_address_1
    @street_address_2 = street_address_2
    @city = city
    @state = state
  end

  def city_and_state
    "#{@city}, #{@state}"
  end
end
