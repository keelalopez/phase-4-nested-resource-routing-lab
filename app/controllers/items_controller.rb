class ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items, include: :user
  end

  def show
    # user = User.find_by(id: params[:id])
    # render json: user, include: :items
    if params[:user_id]
      user = User.find(params[:user_id])
      items = user.items
    else
      items = Item.all
    end
    render items
  end

end
