describe 'AppearancesViewController' do
  tests AppearancesViewController

  @appearance1 = Appearance.new('appearance 1', '123 fake street', '5th floor', 'Springfield', 'IL')
  @appearance2 = Appearance.new('appearance 2', '456 fake avenue', '6th floor', 'Bedrock', 'IL')

  @appearances = [@appearance1, @appearance2]

  def controller
    AppearancesViewController.alloc.initWithAppearances(@appearances)
  end

  it 'should be initialized with appearances' do
    controller.appearances.should == @appearances
  end

  it 'should contain the names of all appearances' do
    @appearances.each do |appearance|
      view(appearance.name).should != nil
    end
  end
end
