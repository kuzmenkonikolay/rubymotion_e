class FavoriteView < UIView
  attr_accessor :label
  def init
    super

    self.backgroundColor = UIColor.whiteColor

    @label = UILabel.new
    @label.text = 'This is a favorite controller'
    @label.textColor = UIColor.blackColor
    @label.frame = [[150, 200], [300, 30]]
    addSubview(@label)

    self
  end
end