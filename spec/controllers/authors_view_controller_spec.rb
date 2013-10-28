describe 'AuthorsViewController' do
  tests AuthorsViewController

  @author1 = Author.new('author1')
  @author2 = Author.new('author2')
  @author3 = Author.new('author3')
  @authors = [@author1, @author2, @author3]

  def controller
    AuthorsViewController.alloc.initWithAuthors(@authors)
  end

  it 'should be initialized with authors' do
    controller.authors.should != nil
  end

  it 'should add the authors name for each cell' do
    @authors.each do |author|
      view(author.name).should != nil
    end
  end
end
