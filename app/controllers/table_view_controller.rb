class TableViewController < UITableViewController
  def init
    super

    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemBookmarks, tag: 5)

    self
  end

  def loadView
    self.title = 'Table'
    self.tableView = UITableView.new
  end

  def tableView(tableView, numberOfRowsInSection: section)
    Titles.all.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = UITableViewCell.new
    cell.textLabel.text = Titles.all[indexPath.row]
    cell.imageView.image = UIImage.imageNamed('volume-off')
    cell
  end
end