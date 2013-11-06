class AppearanceViewController < UIViewController
  include MapKit

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
      map_view = subview(MapView, :map_view)
      map_view.region = CoordinateRegion.new([44.0531, -122.9911], [0.5,0.5])
      map_view.shows_user_location = true
      name_label = subview(UILabel, :name_label)
      name_label.text = @appearance.name

      street_address_1_label = subview(UILabel, :street_address_1_label)
      street_address_1_label.text = @appearance.street_address_1

      street_address_2_label = subview(UILabel, :street_address_2_label)
      street_address_2_label.text = @appearance.street_address_2

      city_state_zipcode_label = subview(UILabel, :city_state_zipcode_label)
      city_state_zipcode_label.text = @appearance.city_state_and_zipcode
    end
  end
end
