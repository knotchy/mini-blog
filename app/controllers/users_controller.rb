class UsersController < ApplicationController
  def show
    @name = current_user.name
    @blogs = current_user.blogs.order("created_at DESC")
  end
end
