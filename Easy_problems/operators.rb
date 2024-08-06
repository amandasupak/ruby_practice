# a += b
# shorthand for a = a + b
> a = 1
> a += 1
a = 2


# a ||= b
# asks if a is defined, and if not, evaluated b and saves it to a
@current_user ||= User.find_by_id(session[:user_id])
# this will either find that @current_user is defined, or if not, it will define
# it and then save it as @ current_user
