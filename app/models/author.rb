class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    [
     Author.new('Homer Simpson'), 
     Author.new('Peter Griffin'),
     Author.new('Eric Cartman'),
     Author.new('Fred Flintstone'),
     Author.new('George Jetson'),
    ]
  end

  def appearances
    appearance = Appearance.new('Simpson House', '742 Evergreen Terrace', 'Springfield', 'OR', '97477')
    [appearance, appearance, appearance]
  end
end
