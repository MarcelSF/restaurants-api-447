class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    !user.nil?
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
