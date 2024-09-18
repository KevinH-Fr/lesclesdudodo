class PagesController < ApplicationController

  include UsersHelper

  def home
    if current_user_id
      @user = User.find(current_user_id) 
      @enfants = Enfant.where(user: @user)
    end 
  end
end
