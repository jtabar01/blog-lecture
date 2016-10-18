class PostPolicy < ApplicationPolicy
  def create?
    user.has_role? :admin or user.has_role? :moderator
  end
end
