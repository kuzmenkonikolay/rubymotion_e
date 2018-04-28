class FavoriteViewController < UIViewController
  def init
    super

    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag: 1)

    self
  end

  def viewDidLoad
    self.title = 'Favorite'
  end

  def loadView
    self.view = FavoriteView.new
  end
end