class MapViewController < UIViewController
  def init
    super

    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemSearch, tag: 6)

    self
  end

  def loadView
    self.title = 'Map'
    self.view = MKMapView.new
    center_austin
  end

  def center_austin
    coordinates = CLLocationCoordinate2D.new
    coordinates.latitude = 30.26
    coordinates.longitude = -97.74

    span = MKCoordinateSpan.new
    span.latitudeDelta = 0.1
    span.longitudeDelta = 0.1

    region = MKCoordinateRegion.new
    region.center = coordinates
    region.span = span

    self.view.setRegion(region, animated: true)
  end
end