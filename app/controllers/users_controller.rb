class UsersController < ApplicationController
  def show
    @question= Question.where(user_id: current_user.id)
    
  end
  before_action :authenticate_user!
end
