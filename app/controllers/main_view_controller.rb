class MainViewController < UIViewController
  def viewDidLoad
    self.title = 'Main Controller'
  end

  def loadView
    self.view = MainView.new
  end

end