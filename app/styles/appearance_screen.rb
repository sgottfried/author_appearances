Teacup::Stylesheet.new :appearance_screen do
  style :root,
    backgroundColor: :white.uicolor
  style :name_label,
    frame: [[30, 260], [300, 20]]
  style :street_address_1_label,
    frame: [[30, 285], [300, 20]]
  style :street_address_2_label,
    frame: [[30, 300], [300, 20]]
  style :city_state_zipcode_label,
    frame: [[30, 325], [300, 20]]
  style :map_view,
    frame: [[10, 10], [300, 240]]
end
