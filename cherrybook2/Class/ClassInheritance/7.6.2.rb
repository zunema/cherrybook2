class User
end

user = User.new
p user
p user.to_s
p user.nil?

p User.superclass

p user.methods.sort