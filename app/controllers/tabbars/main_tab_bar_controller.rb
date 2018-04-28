class MainTabBarController < UITabBarController

  def init
    super

    self.viewControllers = [
        UINavigationController.alloc.initWithRootViewController(MainViewController.new),
        UINavigationController.alloc.initWithRootViewController(FavoriteViewController.new),
        UINavigationController.alloc.initWithRootViewController(RecentViewController.new),
        UINavigationController.alloc.initWithRootViewController(SecondViewController.new)
    ]

    # self.tabBar.barTintColor = UIColor.redColor

    self
  end
end