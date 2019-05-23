class ToppagesController < ApplicationController
  def index
    if logged_in?
      # current_user ：サインインしているユーザを取得
      @task = current_user.tasks.build #form_with 用
      @tasks = current_user.tasks.order(id: :desc).page(params[:page])
    end
  end
end
