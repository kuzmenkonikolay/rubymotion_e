class MainTabBarController < UITabBarController

  def init
    super

    self.viewControllers = [
        FavoriteViewController.new,
        RecentViewController.new,
        SecondViewController.new
    ]

    # self.tabBar.barTintColor = UIColor.redColor

    self
  end
end