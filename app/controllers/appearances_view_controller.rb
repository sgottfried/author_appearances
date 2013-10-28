class AppearancesViewController < UITableViewController

  attr_reader :appearances
  
  def initWithAppearances(appearances)
    @appearances = appearances
    self
  end

  def viewDidLoad
    super
    self.title = 'Appearances'
    self.tableView.setSeparatorInset(UIEdgeInsetsZero)
  end

  def tableView(table_view, cellForRowAtIndexPath:index_path)
    cell_identifier = 'appearance_cell'
    cell = table_view.dequeueReusableCellWithIdentifier(cell_identifier) ||
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:cell_identifier)

    cell.textLabel.text = @appearances[index_path.row].name
    cell
  end
  
  def tableView(tableView, numberOfRowsInSection:section)
    @appearances.length
  end

  def tableView(table_view, didSelectRowAtIndexPath:index_path)
    appearance = @appearances[index_path.row]
    appearance_controller = AppearanceViewController.alloc.initWithAppearance(appearance)
    self.navigationController.pushViewController(appearance_controller, animated:true)
  end
end
