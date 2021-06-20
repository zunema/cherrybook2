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

  def initialize(name, price)
    # 引数を全てスーパークラスのメソッドに渡す。つまりsuper(name, price)と書いたのと同じ
    super

    # サブクラスで必要な初期化処理を書く
  end

end

dvd = DVD.new('A great movie', 1000)
p dvd.name
p dvd.price
p dvd.name
p dvd.price
p dvd.name
p dvd.price





