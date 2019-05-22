module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    #||= =>左辺が偽か未定義ならば右辺を代入
  end
  
  def logged_in?
    !!current_user
  end
end
