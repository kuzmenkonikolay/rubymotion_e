class MainViewController < UIViewController
  def init
    super

    # self.tabBarItem = UITabBarItem.alloc.initWithTitle('Second', image: UIImage.imageNamed('second_image'), tag: 3)
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemTopRated, tag: 1)

    self
  end

  def viewDidLoad
    self.title = 'Main'
  end

  def loadView
    self.view = MainView.new
    view.button.addTarget(self, action: :alert_controller, forControlEvents: UIControlEventTouchUpInside)
    view.todo_button.addTarget(self, action: :add_todo, forControlEvents: UIControlEventTouchUpInside)

    right_button = UIBarButtonItem.alloc.initWithTitle('Add', style: UIBarButtonItemStylePlain, target: self, action: :add_todo)
    left_button = UIBarButtonItem.alloc.initWithTitle('Delete', style: UIBarButtonItemStylePlain, target: self, action: nil)
    self.navigationItem.setRightBarButtonItem(right_button, animated: true)
    self.navigationItem.setLeftBarButtonItem(left_button, animated: true)
  end

  def alert_controller
    @alert_controller ||= UIAlertController.alertControllerWithTitle("Pomodoro Complete!",
                                                                     message: "Time to take a short break.",
                                                                     preferredStyle: UIAlertControllerStyleAlert).tap do |alert|
                                                                       ok_action = UIAlertAction.actionWithTitle("OK",
                                                                                                                 style:UIAlertActionStyleDefault,
                                                                                                                 handler: Proc.new { |obj| ok_response } )

                                                                       cancel_action = UIAlertAction.actionWithTitle("Cancel",
                                                                                                                 style:UIAlertActionStyleDefault,
                                                                                                                 handler: nil)
                                                                       alert.addAction(ok_action)
                                                                       alert.addAction(cancel_action)
                                                                     end

    self.presentViewController(@alert_controller, animated: true, completion: nil)
  end

  def ok_response
    p 'You pressed ok'
  end

  def second_controller
    navigationController.pushViewController(TodoViewController.new, animated: true)
  end

  def add_todo
    navigationController.pushViewController(TodoViewController.new, animated: true)
  end
end