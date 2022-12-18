class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
    # if params[:user_id]
    #   user = User.find(params[:user_id])
    #   items = user.items
    # else
    #   items = Item.all
    # end
    # render items
  end

end
