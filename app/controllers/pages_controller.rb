class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @tutorials = Tutorial.all.limit(6).order(created_at: :desc)
    @categories = Category.all.map { |cat| cat.name }
  end

  def user_dashboard
    if current_user.present?
      @user = current_user
    else
      redirect_to root_path
    end
  end

  def testing
  end
end
