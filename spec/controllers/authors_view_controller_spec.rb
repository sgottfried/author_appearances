describe 'AuthorsViewController' do
  tests AuthorsViewController

  def controller
    AuthorsViewController.alloc.initWithAuthors(['author1', 'author2', 'author3'])
  end

  it 'should be initialized with authors' do
    controller.authors.should != nil
  end

end
