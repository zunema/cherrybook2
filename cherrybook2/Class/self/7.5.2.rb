class Foo

  # 注：このputsはクラス定義の読み込み時に呼び出される
  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts"インスタンスメソッド内のself: #{self}"
  end

end

Foo.bar
foo = Foo.new
foo.baz