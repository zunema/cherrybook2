# オブジェクトのクラスを確認する


class User
end

user = User.new
p user.class

# userはUserクラスのインスタンスか？
p user.instance_of?(User)

# userはStringクラスのインスタンスか？
p user.instance_of?(String)