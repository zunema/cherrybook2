# superでスーパークラスのメソッドを呼び出す


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
  # nameとpriceはスーパークラスでattr_readerが設定されているので定義不要
  attr_reader :running_time
  
  def initialize(name, price, running_time)
    # スーパークラスにも存在している属性
    @name = name
    @price = price
    # DVDクラス独自の属性
    @running_time = running_time
  end
  
end

dvd = DVD.new('A great movie', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time