class TodoView < UIView
  attr_accessor :label
  def init
    super

    self.backgroundColor = UIColor.orangeColor

    @label = UILabel.new
    @label.text = 'You can add a todo here'
    @label.textColor = UIColor.blackColor
    @label.frame = [[20, 200], [200, 30]]
    addSubview(@label)

    self
  end
end