class MainView < UIView
  attr_accessor :button, :todo_button, :top_guide, :label, :field
  def init
    super

    self.backgroundColor = UIColor.whiteColor
    @button = UIButton.new
    @button.setTitle('Button Title', forState: UIControlStateNormal)
    @button.setTitle('Pressing me', forState: UIControlStateHighlighted)
    @button.setTitleColor(UIColor.redColor, forState: UIControlStateNormal)
    # button.frame = [[x,y], [width, height]]
    addSubview(@button)

    @todo_button = UIButton.buttonWithType(UIButtonTypeDetailDisclosure)
    @todo_button.setTitle('Add Todo', forState: UIControlStateNormal)
    @todo_button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    # button.frame = [[x,y], [width, height]]
    addSubview(@todo_button)

    @label = UILabel.new
    @label.text = 'Text Label'
    @label.textColor = UIColor.blueColor
    addSubview(@label)

    @field = UITextField.new
    @field.placeholder = 'Text inside the field'
    @field.backgroundColor = UIColor.yellowColor
    addSubview(@field)

    self
  end

  def view_constraints
    @label.translatesAutoresizingMaskIntoConstraints = false
    @field.translatesAutoresizingMaskIntoConstraints = false
    @button.translatesAutoresizingMaskIntoConstraints = false
    @todo_button.translatesAutoresizingMaskIntoConstraints = false

    constraints = NSLayoutConstraint.constraintsWithVisualFormat(
        '|-50-[label][field(==label)]-50-|',
        options: NSLayoutFormatAlignAllBaseline,
        metrics: nil,
        views: {'label' => @label, 'field' => @field})
    constraints2 = NSLayoutConstraint.constraintsWithVisualFormat(
        '|-50-[button]-50-|',
        options: NSLayoutFormatDirectionLeadingToTrailing,
        metrics: nil,
        views: {'button' => @button})
    constraints3 = NSLayoutConstraint.constraintsWithVisualFormat(
        '|-50-[todo_button]-50-|',
        options: NSLayoutFormatDirectionLeadingToTrailing,
        metrics: nil,
        views: {'todo_button' => @todo_button})
    constraints4 = NSLayoutConstraint.constraintsWithVisualFormat(
        'V:[top_guide]-[label]-20-[button]-20-[todo_button]',
        options: NSLayoutFormatDirectionLeadingToTrailing,
        metrics: nil,
        views: {'label' => @label, 'button' => @button, 'todo_button' => @todo_button, 'top_guide' => @top_guide})

    NSLayoutConstraint.activateConstraints(constraints)
    NSLayoutConstraint.activateConstraints(constraints2)
    NSLayoutConstraint.activateConstraints(constraints3)
    NSLayoutConstraint.activateConstraints(constraints4)
  end
end