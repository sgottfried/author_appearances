describe 'AppearanceViewController' do
  tests AppearanceViewController

  @appearance = Appearance.new('appearance 1', '123 fake street', '5th floor', 'Springfield', 'IL')

  def controller
    AppearanceViewController.alloc.initWithAppearance(@appearance)
  end

  it 'should be initialized with an appearance' do
    controller.appearance.should == @appearance
  end

  it 'should contain the name of the appearance' do
    view(@appearance.name).should != nil
  end

  it 'should contain the street address (line 1) of the appearance' do
    view(@appearance.street_address_1).should != nil
  end

  it 'should contain the street address (line 2) of the appearance' do
    view(@appearance.street_address_2).should != nil
  end

  it 'should contain a city and state line for the appearance' do
    view(@appearance.city_and_state).should != nil
  end
end
