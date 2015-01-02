class UsersController < ApplicationController

  before_filter :authenticate_user!

  def account
  end

end
