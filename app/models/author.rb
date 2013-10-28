class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def all
    [
     Author.new('Ernest Hemingway'), 
     Author.new('Cassandra Clare'),
     Author.new('Stephen King'),
     Author.new('Karen Kingsbury'),
     Author.new('Walter Isaacson'),
     Author.new('Jude Deveraux')
    ]
  end
end
