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
end