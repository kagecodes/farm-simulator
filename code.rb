class Field

  @@field = []

  def initialize(type, size)
    @type = type
    @size = size.to_i
    @harvested = false
    if @type == 'corn'
      @amount = 20 * @size
    else @type == 'wheat'
      @amount = 30 * @size
    end
    @@field.push(self)
  end

  def type
    @type
  end

  def size
    @size
  end

  def amount
    @amount
  end

  def harvested
    @harvested
  end

  def harvested=(input)
    @harvested = input
  end

  def self.all
    @@field
  end


end
