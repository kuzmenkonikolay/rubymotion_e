class TableViewController < UITableViewController
  def init
    super

    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemBookmarks, tag: 5)

    self
  end

  def loadView
    self.title = 'Table'
    self.tableView = UITableView.new
    tableView.registerClass(UITableViewCell, forCellReuseIdentifier: 'CELL')
  end

  def tableView(tableView, numberOfRowsInSection: section)
    Titles.all.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier('CELL', forIndexPath: indexPath)
    cell.textLabel.text = Titles.all[indexPath.row][0]
    cell.imageView.image = UIImage.imageNamed(Titles.all[indexPath.row][1])
    cell
  end
end