class TutorialPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
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
    user_is_logged?
  end

  def update?
    user_is_logged?
  end

  def destroy?
    user_is_logged?
  end

  private

  def user_is_logged?
    record.user == user
  end
end
