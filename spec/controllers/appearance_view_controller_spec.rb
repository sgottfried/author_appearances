describe 'AppearanceViewController' do
  tests AppearanceViewController

  @appearance = Appearance.new
  @appearance.name = 'appearance 1'

  def controller
    AppearanceViewController.alloc.initWithAppearance(@appearance)
  end

  it 'should be initialized with an appearance' do
    controller.appearance.should == @appearance
  end

  it 'should contain the name of the appearance' do
      view(@appearance.name).should != nil
  end
end
