class AuthorsViewController < UITableViewController

  attr_reader :authors

  def initWithAuthors(authors)
    @authors = authors
    self
  end

  def viewDidLoad
    super
    self.tableView.setSeparatorInset(UIEdgeInsetsZero)
  end
end
