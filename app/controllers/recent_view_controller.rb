class RecentViewController < UIViewController
  def init
    super

    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemRecents, tag: 2)

    self
  end

  def viewDidLoad
    self.title = 'Recent'
  end

  def loadView
    self.view = RecentView.new
  end
end