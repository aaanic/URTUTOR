class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @tutorials = Tutorial.all
    @categories = Tutorial.select(:category).map(&:category).uniq
  end

  def user_dashboard

  end
end
