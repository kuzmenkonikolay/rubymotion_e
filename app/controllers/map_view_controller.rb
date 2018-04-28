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
    get_location
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

  def get_location
    if CLLocationManager.locationServicesEnabled
      @location_manager = CLLocationManager.new
      @location_manager.delegate = self
      @location_manager.requestAlwaysAuthorization
      @location_manager.desiredAccuracy = KCLLocationAccuracyNearestTenMeters
      @location_manager.distanceFilter = 25.0
      @location_manager.startUpdatingLocation
    end
  end

  def locationManager(locationManager, didUpdateLocations: locations)

  end
end