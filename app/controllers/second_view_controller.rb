class SecondViewController < UIViewController
  def viewDidLoad
    self.title = 'Second'
  end

  def loadView
    self.view = SecondView.new
    view.switch.addTarget(self, action: :on_action, forControlEvents: UIControlEventValueChanged)
  end

  def on_action
    if view.switch.on?
      puts 'on'
    else
      puts 'of'
    end
  end
end