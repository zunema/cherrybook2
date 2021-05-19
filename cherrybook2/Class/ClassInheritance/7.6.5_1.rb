class Prodct
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end

prodct = Prodct.new('A great movie', 1000)
p prodct.name
p prodct.price


class DVD < Prodct
  attr_reader :running_time

  def initialize(name, price, running_time)
    # スーパークラスのinitializeメソッドを呼び出す
    super(name, price)
    @running_time = running_time
  end

end

dvd = DVD.new('A great movie', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time

