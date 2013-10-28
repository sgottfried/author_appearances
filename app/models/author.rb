class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    [
     Author.new('Morgan Jones'), 
     Author.new('Damien Lewis'),
     Author.new('Diane Setterfield'),
     Author.new('Piers Morgan'),
     Author.new('Hannah Luce'),
     Author.new('William Kent Kreuger')
    ]
  end

  def appearances
    appearance = Appearance.new
    appearance.name = 'CBS-TV'
    [appearance, appearance, appearance]
  end
end
