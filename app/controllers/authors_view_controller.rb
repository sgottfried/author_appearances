class AuthorsViewController < UITableViewController
  def viewDidLoad
    super
    self.tableView.setSeparatorInset(UIEdgeInsetsZero)
  end
end
