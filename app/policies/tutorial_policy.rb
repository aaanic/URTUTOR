class TutorialPolicy < ApplicationPolicy
  class Scope < Scope
  end

  # def new?
  #   true
  # end

  def show?
    true
  end

  def create?
    user_is_logged?
  end

  def edit?
    user_is_logged? || user.admin
  end

  def update?
    user_is_logged?
  end

  def destroy?
    user_is_logged? || user.admin
  end

  private

  def user_is_logged?
    record.user == user
  end
end
