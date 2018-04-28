class MainView < UIView
  attr_accessor :button
  def init
    super

    self.backgroundColor = UIColor.whiteColor
    @button = UIButton.new
    @button.setTitle('Button Title', forState: UIControlStateNormal)
    @button.setTitle('Pressing me', forState: UIControlStateHighlighted)
    @button.setTitleColor(UIColor.redColor, forState: UIControlStateNormal)
    # button.frame = [[x,y], [width, height]]
    @button.frame = [[20,200], [250, 30]]
    addSubview(@button)

    label = UILabel.new
    label.text = 'Text Label'
    label.textColor = UIColor.blueColor
    label.frame = [[20,150], [250, 30]]
    addSubview(label)

    field = UITextField.new
    field.placeholder = 'Text inside the field'
    field.backgroundColor = UIColor.yellowColor
    field.frame = [[20,250], [250, 30]]
    addSubview(field)
  end
end