class AuthorsViewController < UITableViewController

  attr_reader :authors

  def initWithAuthors(authors)
    @authors = authors
    self
  end

  def viewDidLoad
    super
    self.title = 'Authors'
    self.tableView.setSeparatorInset(UIEdgeInsetsZero)
  end

  def tableView(table_view, cellForRowAtIndexPath:index_path)
    cell_identifier = 'author_cell'
    cell = table_view.dequeueReusableCellWithIdentifier(cell_identifier) ||
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:cell_identifier)

    cell.textLabel.text = @authors[index_path.row]
    cell
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @authors.length
  end
end
