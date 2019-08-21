class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @tutorials = Tutorial.all
    @categories = Tutorial.select(:category).map(&:category).uniq
  end

  def user_dashboard
    if current_user.present?
      @user = current_user
    else
      redirect_to root_path
    end
  end
end
