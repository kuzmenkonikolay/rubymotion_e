class SecondView < UIView
  attr_accessor :switch
  def init
    super

    self.backgroundColor = UIColor.redColor
    @switch = UISwitch.alloc.initWithFrame([[20, 150], [200, 30]])
    @switch.onTintColor = UIColor.blackColor
    addSubview(@switch)

    self
  end
end