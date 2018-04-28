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
      @text_label = UILabel
      @text_label.text = 'This is hidden no more!'
      @text_label.frame = [[20,300], [300, 30]]
      @text_label.textColor = UIColor.blackColor
      view.addSubview(@text_label)
    else
      puts 'of'
      @text_label.removeFromSuperview
    end
  end
end