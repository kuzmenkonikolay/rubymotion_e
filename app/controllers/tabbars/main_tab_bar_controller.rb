class MainTabBarController < UITabBarController

  def init
    super

    self.viewControllers = [
        SecondViewController.new,
        MainViewController.new
    ]

    # self.tabBar.barTintColor = UIColor.redColor

    self
  end
end