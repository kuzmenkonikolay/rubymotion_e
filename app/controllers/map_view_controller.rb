class MapViewController < UIViewController
  attr_accessor :region, :span, :pin
  def init
    super

    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemSearch, tag: 6)

    self
  end

  def loadView
    self.title = 'Map'
    self.view = MKMapView.new
    center_austin
    @pin = MKPointAnnotation.new
    get_location
  end

  def center_austin
    coordinates = CLLocationCoordinate2D.new
    coordinates.latitude = 30.26
    coordinates.longitude = -97.74

    @span = MKCoordinateSpan.new
    @span.latitudeDelta = 0.01
    @span.longitudeDelta = 0.01

    @region = MKCoordinateRegion.new
    @region.center = coordinates
    @region.span = @span

    self.view.setRegion(@region, animated: true)
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
    # locations.first.coordinate.latitude
    # locations.first.coordinate.longitude
    current_location = locations.first.coordinate
    
    @pin.coordinate = current_location
    @region.center = current_location
    @region.span = @span
    view.showAnnotations([@pin], animated: true)
    view.setRegion(@region, animated: true)
  end
end