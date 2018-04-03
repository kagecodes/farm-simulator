class Field

  def initialize(type, size)
    @type = type
    @size = size
  end

  def field
    puts "What kind of field is it: corn or wheat?"
    input_type = gets.chomp

    puts "How large is the field in hectares?"
    input_size = gets.chomp

    # Field.create(input_type, input_size)
  end

  def harvest

  end

  def status

  end

  def relax

  end

  def self.create(type, size)
    new_field = Field.new(type, size)
  end



end


cornfield = Field.create("corn", 50)

puts cornfield.inspect
