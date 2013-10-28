class AppearanceViewController < UIViewController

  attr_reader :appearance

  stylesheet :appearance_screen

  def initWithAppearance(appearance)
    self.title = appearance.name
    @appearance = appearance
    self
  end

  def viewDidLoad
    super
    layout(self.view, :root) do
      name_label = subview(UILabel, :name_label)
      name_label.text = @appearance.name
    end
  end
end
