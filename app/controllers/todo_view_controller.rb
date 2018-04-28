class TodoViewController < UIViewController
  def viewDidLoad
    self.title = 'Add a Todo'
  end

  def loadView
    self.view = TodoView.new
  end
end