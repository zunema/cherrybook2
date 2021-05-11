class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # 金額を整形するクラスメソッド
  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    # インスタンスメソッドからクラスメソッドを呼び出す
    formatted_price = Product.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end

end

p product = Product.new('A great movie', 1000)
p product.to_s

# クラス名.メソッドの形式でクラスメソッドを呼び出す
# Product.format_price(price)

# self.class.メソッドの形式でクラスメソッドを呼び出す
# self.class.format_price(price)