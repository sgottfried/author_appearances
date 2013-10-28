describe 'AppearancesViewController' do
  tests AppearancesViewController

  @appearance1 = Appearance.new
  @appearance1.name = 'appearance 1'
  @appearance2 = Appearance.new
  @appearance2.name = 'appearance 2'

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
