class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @tutorials = Tutorial.all
    @categories = Category.all.map { |cat| cat.name }
  end

  def user_dashboard

  end
end
