class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # selfなしでname=を呼ぶ（？）
    name = 'Bob'
  end

  def rename_to_carol
    # self付きでname=を呼ぶ
    self.name = 'Carol'
  end

  def rename_to_dave
    # 直接インスタンス変数を書き換える
    @name = 'Dabe'
  end

end

user = User.new('Alice')

# Bobにリネーム・・・・・できていない！！
p user.rename_to_bob
p user.name

# Carolにリネーム
p user.rename_to_carol
p user.name

# Dabeにリネーム
p user.rename_to_dave
p user.name