class MainViewController < UIViewController
  def viewDidLoad
    self.title = 'Main Controller'
  end

  def loadView
    self.view = UIView.new
    view.backgroundColor = UIColor.whiteColor

    button = UIButton.new
    button.setTitle('Button Title', forState: UIControlStateNormal)
    button.setTitle('Pressing me', forState: UIControlStateHighlighted)
    button.setTitleColor(UIColor.redColor, forState: UIControlStateNormal)
    # button.frame = [[x,y], [width, height]]
    button.frame = [[20,200], [250, 30]]
    view.addSubview(button)
  end

end