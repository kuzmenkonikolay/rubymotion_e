class MainViewController < UIViewController
  def viewDidLoad
    self.title = 'Main'
  end

  def loadView
    self.view = MainView.new
    view.button.addTarget(self, action: :alert_controller, forControlEvents: UIControlEventTouchUpInside)
    view.todo_button.addTarget(self, action: :second_controller, forControlEvents: UIControlEventTouchUpInside)
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
    navigationController.pushViewController(SecondViewController.new, animated: true)
  end

end