class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user_is_logged_in?
  end

  def destroy?
    user_is_logged_in?
  end

  def user_is_logged_in?
    record.user == user
  end
end
