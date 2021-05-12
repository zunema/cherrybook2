# オブジェクトのクラスを確認する


class User
end

user = User.new
p user.class

# userはUserクラスのインスタンスか？
p user.instance_of?(User)

# userはStringクラスのインスタンスか？
p user.instance_of?(String)


# instance_of?はクラスが全く同じでないとtrueにならない
p user.instance_of?(Object)


# is_a?はis-a関係にあればtrueになる
p user.is_a?(User)
p user.is_a?(Object)
p user.is_a?(BasicObject)

# is-a関係にない場合はfalse
p user.is_a?(String)